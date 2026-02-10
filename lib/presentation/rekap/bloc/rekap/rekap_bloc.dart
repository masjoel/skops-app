import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_skops/data/datasources/kontrol_remote_ds.dart';
import 'package:webview_skops/presentation/rekap/models/rekap_response_model.dart';

part 'rekap_event.dart';
part 'rekap_state.dart';
part 'rekap_bloc.freezed.dart';

class RekapBloc extends Bloc<RekapEvent, RekapState> {
  final KontrolRemoteDs kontrolRemoteDs;
  String _currentSearch = '';

  RekapBloc(this.kontrolRemoteDs) : super(RekapState.initial()) {
    on<_LoadRekap>((event, emit) async {
      emit(const RekapState.loading());

      final result = await kontrolRemoteDs.getRekap(
        page: 1,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );

      result.fold((l) => emit(RekapError(l)), (r) {
        final pagination = r.data.kontrol;
        emit(
          RekapSuccess(
            rekap: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    // on<_LoadRekap>((event, emit) async {
    //   emit(const RekapState.loading());
    //   final result = await kontrolRemoteDs.getRekap(
    //     page: 1,
    //     search: _currentSearch.isEmpty ? null : _currentSearch,
    //   );
    //   result.fold((l) => emit(RekapError(l)), (r) {
    //     final data = r.data;
    //     emit(
    //       RekapSuccess(
    //         rekap: data.rekap,
    //         currentPage: data.currentPage,
    //         lastPage: data.lastPage,
    //         hasReachedMax: data.currentPage >= data.lastPage,
    //         isLoadingMore: false,
    //       ),
    //     );
    //   });
    // });

    on<_LoadMore>((event, emit) async {
      final currentState = state;
      if (currentState is! RekapSuccess) return;
      if (currentState.hasReachedMax || currentState.isLoadingMore) return;
      emit(currentState.copyWith(isLoadingMore: true));
      final nextPage = currentState.currentPage + 1;
      final result = await kontrolRemoteDs.getRekap(
        page: nextPage,
        search: _currentSearch.isEmpty ? null : _currentSearch,
      );
      result.fold((l) => emit(currentState.copyWith(isLoadingMore: false)), (
        r,
      ) {
        final pagination = r.data.kontrol;
        emit(
          RekapSuccess(
            rekap: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_SearchRekap>((event, emit) async {
      _currentSearch = event.query;
      emit(const RekapState.loading());
      final result = await kontrolRemoteDs.getRekap(
        page: 1,
        search: event.query.isEmpty ? null : event.query,
      );
      result.fold((error) => emit(RekapState.error(error)), (response) {
        final pagination = response.data.kontrol;
        emit(
          RekapSuccess(
            rekap: pagination.data,
            currentPage: pagination.currentPage,
            lastPage: pagination.lastPage,
            hasReachedMax: pagination.currentPage >= pagination.lastPage,
            isLoadingMore: false,
          ),
        );
      });
    });

    on<_Refresh>((event, emit) async {
      add(const RekapEvent.loadRekap());
    });

  }
}
