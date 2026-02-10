part of 'rekap_bloc.dart';

@freezed
class RekapState with _$RekapState {
  const factory RekapState.initial() = RekapInitial;
  const factory RekapState.loading() = RekapLoading;
  const factory RekapState.loaded(List<RekapSingle> rekap) = RekapLoaded;
  const factory RekapState.sukses(List<RekapSingle> rekap) = RekapSukses;
  const factory RekapState.success({
    required List<RekapSingle> rekap,
    required int currentPage,
    required int lastPage,
    required bool hasReachedMax,
    required bool isLoadingMore,
  }) = RekapSuccess;
  const factory RekapState.error(String message) = RekapError;
}
