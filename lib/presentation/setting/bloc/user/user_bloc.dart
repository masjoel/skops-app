import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/setting/models/user_request_model.dart';
import 'package:webview_skops/presentation/setting/models/user_response_model.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final MasterRemoteDatasource masterRemoteDatasource;
  String _currentSearch = '';

  UserBloc(this.masterRemoteDatasource) : super(UserState.initial()) {
        on<_LoadUser>((event, emit) async {
      emit(const UserState.loading());

      final result = await masterRemoteDatasource.getUser(
        page: 1,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );

      result.fold((l) => emit(UserError(l)), (r) {
        final pagination = r.data.user;
        emit(
          UserSuccess(
            singleuser: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_LoadMore>((event, emit) async {
      final currentState = state;
      if (currentState is! UserSuccess) return;
      if (currentState.hasReachedMax || currentState.isLoadingMore) return;
      emit(currentState.copyWith(isLoadingMore: true));
      final nextPage = currentState.currentPage + 1;
      final result = await masterRemoteDatasource.getUser(
        page: nextPage,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(currentState.copyWith(isLoadingMore: false)), (
        r,
      ) {
        final pagination = r.data.user;
        emit(
          UserSuccess(
            singleuser: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_SearchUser>((event, emit) async {
      _currentSearch = event.query;
      emit(const UserState.loading());
      final result = await masterRemoteDatasource.getUser(
        page: 1,
        search: event.query.isEmpty ? null : event.query,
      );
      result.fold((error) => emit(UserState.error(error)), (response) {
        final pagination = response.data.user;
        emit(
          UserSuccess(
            singleuser: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_Refresh>((event, emit) async {
      add(const UserEvent.loadUser());
    });
    on<_AddUser>((event, emit) async {
      emit(const UserState.loading());
      final response = await masterRemoteDatasource.addUser(event.singleuser);
      response.fold(
        (l) => emit(UserError(l)),
        (r) => emit(UserSukses(r.data.user.data)),
      );
    });
    on<_UpdateUser>((event, emit) async {
      emit(const UserState.loading());
      final response = await masterRemoteDatasource.editUser(event.singleuser);
      response.fold(
        (l) => emit(UserError(l)),
        (r) => emit(UserSukses(r.data.user.data)),
      );
    });
    on<_DeleteUser>((event, emit) async {
      emit(const UserState.loading());
      final response = await masterRemoteDatasource.deleteUser(event.id);
      response.fold(
        (l) => emit(UserError(l)),
        (r) => emit(UserSukses(r.data.user.data)),
      );
    });

  }
}