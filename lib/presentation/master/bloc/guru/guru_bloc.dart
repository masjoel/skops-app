import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/master/models/guru_request_model.dart';
import 'package:webview_skops/presentation/master/models/guru_response_model.dart';

part 'guru_event.dart';
part 'guru_state.dart';
part 'guru_bloc.freezed.dart';

class GuruBloc extends Bloc<GuruEvent, GuruState> {
  final MasterRemoteDatasource masterRemoteDatasource;
  String _currentSearch = '';

  GuruBloc(this.masterRemoteDatasource) : super(GuruInitial()) {
    on<_ListGuru>((event, emit) async {
      emit(const GuruLoading());
      final response = await masterRemoteDatasource.searchGuru(event.search);
      response.fold((l) => emit(GuruError(l)), (r) {
        emit(GuruSukses(r.data.guru));
      });
    });

    on<_LoadGuru>((event, emit) async {
      emit(const GuruState.loading());
      final result = await masterRemoteDatasource.getGuru(
        page: 1,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(GuruError(l)), (r) {
        final data = r.data;
        emit(
          GuruSuccess(
            guru: data.guru,
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_LoadMore>((event, emit) async {
      final currentState = state;
      if (currentState is! GuruSuccess) return;
      if (currentState.hasReachedMax || currentState.isLoadingMore) return;
      emit(currentState.copyWith(isLoadingMore: true));
      final nextPage = currentState.currentPage + 1;
      final result = await masterRemoteDatasource.getGuru(
        page: nextPage,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(currentState.copyWith(isLoadingMore: false)), (
        r,
      ) {
        final data = r.data;
        emit(
          GuruSuccess(
            guru: [...currentState.guru, ...data.guru],
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_SearchGuru>((event, emit) async {
      _currentSearch = event.query;
      emit(const GuruState.loading());
      final result = await masterRemoteDatasource.getGuru(
        page: 1,
        search: event.query.isEmpty ? null : event.query,
      );
      result.fold((error) => emit(GuruState.error(error)), (response) {
        final data = response.data;
        emit(
          GuruSuccess(
            guru: data.guru,
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_Refresh>((event, emit) async {
      add(const GuruEvent.loadGuru());
    });

    on<_AddGuru>((event, emit) async {
      emit(const GuruState.loading());
      final response = await masterRemoteDatasource.addGuru(event.guru);
      response.fold(
        (l) => emit(GuruError(l)),
        (r) => emit(GuruSukses(r.data.guru)),
      );
    });
    on<_UpdateGuru>((event, emit) async {
      emit(const GuruState.loading());
      final response = await masterRemoteDatasource.editGuru(event.guru);
      response.fold(
        (l) => emit(GuruError(l)),
        (r) => emit(GuruSukses(r.data.guru)),
      );
    });
    on<_DeleteGuru>((event, emit) async {
      emit(const GuruState.loading());
      final response = await masterRemoteDatasource.deleteGuru(event.id);
      response.fold(
        (l) => emit(GuruError(l)),
        (r) => emit(GuruSukses(r.data.guru)),
      );
    });
  }
}
