import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/kontrol_remote_ds.dart';
import 'package:webview_skops/presentation/rekap/models/rekap_detail_response_model.dart';

part 'rekap_detail_event.dart';
part 'rekap_detail_state.dart';
part 'rekap_detail_bloc.freezed.dart';

class RekapDetailBloc extends Bloc<RekapDetailEvent, RekapDetailState> {
  final KontrolRemoteDs kontrolRemoteDs;
  String _currentSearch = '';

  RekapDetailBloc(this.kontrolRemoteDs) : super(RekapDetailState.initial()) {
    on<_LoadRekapDetail>((event, emit) async {
      emit(const RekapDetailState.loading());

      final result = await kontrolRemoteDs.getRekapDetail(
        page: 1,
        idsiswa: event.id,
        semester: '',
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );

      result.fold((l) => emit(RekapDetailError(l)), (r) {
        final pagination = r.data.rekapdetail;
        emit(
          RekapDetailSuccess(
            rekapdetail: pagination.data,
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
      if (currentState is! RekapDetailSuccess) return;
      if (currentState.hasReachedMax || currentState.isLoadingMore) return;
      emit(currentState.copyWith(isLoadingMore: true));
      final nextPage = currentState.currentPage + 1;
      final result = await kontrolRemoteDs.getRekapDetail(
        page: nextPage,
        idsiswa: event.id,
        semester: '',
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(currentState.copyWith(isLoadingMore: false)), (
        r,
      ) {
        final pagination = r.data.rekapdetail;
        emit(
          RekapDetailSuccess(
            rekapdetail: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_SearchRekapDetail>((event, emit) async {
      _currentSearch = event.search;
      emit(const RekapDetailState.loading());
      final result = await kontrolRemoteDs.getRekapDetail(
        page: 1,
        idsiswa: event.id,
        semester: event.semester,
        search: event.search.isEmpty ? null : event.search,
      );
      result.fold((error) => emit(RekapDetailState.error(error)), (response) {
        final pagination = response.data.rekapdetail;
        emit(
          RekapDetailSuccess(
            rekapdetail: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_Refresh>((event, emit) async {
      add(RekapDetailEvent.loadRekapDetail(event.id));
    });
  }
}
