part of 'rekap_detail_bloc.dart';


@freezed
class RekapDetailState with _$RekapDetailState {
  const factory RekapDetailState.initial() = RekapDetailInitial;
  const factory RekapDetailState.loading() = RekapDetailLoading;
  const factory RekapDetailState.loaded(List<RekapDetailSingle> rekapdetail) = RekapDetailLoaded;
  const factory RekapDetailState.sukses(List<RekapDetailSingle> rekapdetail) = RekapDetailSukses;
  const factory RekapDetailState.success({
    required List<RekapDetailSingle> rekapdetail,
    required int currentPage,
    required int lastPage,
    required bool hasReachedMax,
    required bool isLoadingMore,
  }) = RekapDetailSuccess;
  const factory RekapDetailState.error(String message) = RekapDetailError;
}

