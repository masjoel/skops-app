import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/master_remote_datasource.dart';
import 'package:webview_skops/presentation/master/models/siswa_response_model.dart';
import 'package:webview_skops/presentation/master/models/siswa_request_model.dart';

part 'siswa_event.dart';
part 'siswa_state.dart';
part 'siswa_bloc.freezed.dart';

class SiswaBloc extends Bloc<SiswaEvent, SiswaState> {
  final MasterRemoteDatasource masterRemoteDatasource;
  String _currentSearch = '';

  SiswaBloc(this.masterRemoteDatasource) : super(SiswaState.initial()) {
    on<_LoadSiswa>((event, emit) async {
      emit(const SiswaState.loading());
      final result = await masterRemoteDatasource.getSiswa(
        page: 1,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(SiswaError(l)), (r) {
        final data = r.data;
        emit(
          SiswaSuccess(
            siswa: data.siswa,
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
      if (currentState is! SiswaSuccess) return;
      if (currentState.hasReachedMax || currentState.isLoadingMore) return;
      emit(currentState.copyWith(isLoadingMore: true));
      final nextPage = currentState.currentPage + 1;
      final result = await masterRemoteDatasource.getSiswa(
        page: nextPage,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(currentState.copyWith(isLoadingMore: false)), (
        r,
      ) {
        final data = r.data;
        emit(
          SiswaSuccess(
            siswa: [...currentState.siswa, ...data.siswa],
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_SearchSiswa>((event, emit) async {
      _currentSearch = event.query;
      emit(const SiswaState.loading());
      final result = await masterRemoteDatasource.getSiswa(
        page: 1,
        search: event.query.isEmpty ? null : event.query,
      );
      result.fold((error) => emit(SiswaState.error(error)), (response) {
        final data = response.data;
        emit(
          SiswaSuccess(
            siswa: data.siswa,
            currentPage: data.currentPage,
            lastPage: data.lastPage,
            hasReachedMax: data.currentPage >= data.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_Refresh>((event, emit) async {
      add(const SiswaEvent.loadSiswa());
    });

    on<_AddSiswa>((event, emit) async {
      emit(const SiswaState.loading());
      final response = await masterRemoteDatasource.addSiswa(event.siswa);
      response.fold(
        (l) => emit(SiswaError(l)),
        (r) => emit(SiswaSukses(r.data.siswa)),
      );
    });
    on<_UpdateSiswa>((event, emit) async {
      emit(const SiswaState.loading());
      final response = await masterRemoteDatasource.editSiswa(event.siswa);
      response.fold(
        (l) => emit(SiswaError(l)),
        (r) => emit(SiswaSukses(r.data.siswa)),
      );
    });
    on<_DeleteSiswa>((event, emit) async {
      emit(const SiswaState.loading());
      final response = await masterRemoteDatasource.deleteSiswa(event.id);
      response.fold(
        (l) => emit(SiswaError(l)),
        (r) => emit(SiswaSukses(r.data.siswa)),
      );
    });
  }
}
