import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/master/models/walikelas_request_model.dart';
import 'package:webview_skops/presentation/master/models/walikelas_response_model.dart';

part 'walikelas_event.dart';
part 'walikelas_state.dart';
part 'walikelas_bloc.freezed.dart';

class WalikelasBloc extends Bloc<WalikelasEvent, WalikelasState> {
  final MasterRemoteDatasource masterRemoteDatasource;
  String _currentSearch = '';

  WalikelasBloc(this.masterRemoteDatasource) : super(WalikelasInitial()) {
    on<_LoadWalikelas>((event, emit) async {
      emit(const WalikelasState.loading());
      final result = await masterRemoteDatasource.getWalikelas(
        page: 1,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(WalikelasError(l)), (r) {
        final data = r.data;
        emit(
          WalikelasSuccess(
            walikelas: data.walikelas,
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
      if (currentState is! WalikelasSuccess) return;
      if (currentState.hasReachedMax || currentState.isLoadingMore) return;
      emit(currentState.copyWith(isLoadingMore: true));
      final nextPage = currentState.currentPage + 1;
      final result = await masterRemoteDatasource.getWalikelas(
        page: nextPage,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(currentState.copyWith(isLoadingMore: false)), (
        r,
      ) {
        final data = r.data;
        emit(
          WalikelasSuccess(
            walikelas: [...currentState.walikelas, ...data.walikelas],
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_SearchWalikelas>((event, emit) async {
      _currentSearch = event.query;
      emit(const WalikelasState.loading());
      final result = await masterRemoteDatasource.getWalikelas(
        page: 1,
        search: event.query.isEmpty ? null : event.query,
      );
      result.fold((error) => emit(WalikelasState.error(error)), (response) {
        final data = response.data;
        emit(
          WalikelasSuccess(
            walikelas: data.walikelas,
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_Refresh>((event, emit) async {
      add(const WalikelasEvent.loadWalikelas());
    });

    on<_AddWalikelas>((event, emit) async {
      emit(const WalikelasState.loading());
      final response = await masterRemoteDatasource.addWalikelas(
        event.walikelas,
      );
      response.fold(
        (l) => emit(WalikelasError(l)),
        (r) => emit(WalikelasSukses(r.data.walikelas)),
      );
    });
    on<_UpdateWalikelas>((event, emit) async {
      emit(const WalikelasState.loading());
      final response = await masterRemoteDatasource.editWalikelas(
        event.walikelas,
      );
      response.fold(
        (l) => emit(WalikelasError(l)),
        (r) => emit(WalikelasSukses(r.data.walikelas)),
      );
    });
    on<_DeleteWalikelas>((event, emit) async {
      emit(const WalikelasState.loading());
      final response = await masterRemoteDatasource.deleteWalikelas(event.id);
      response.fold(
        (l) => emit(WalikelasError(l)),
        (r) => emit(WalikelasSukses(r.data.walikelas)),
      );
    });
  }
}
