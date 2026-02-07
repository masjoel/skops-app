part of 'guru_bloc.dart';

@freezed
class GuruState with _$GuruState {
  const factory GuruState.initial() = GuruInitial;
  const factory GuruState.loading() = GuruLoading;
  const factory GuruState.loaded(List<Guru> guru) = GuruLoaded;
  const factory GuruState.sukses(List<Guru> guru) = GuruSukses;
  const factory GuruState.success({
    required List<Guru> guru,
    required int currentPage,
    required int lastPage,
    required bool hasReachedMax,
    required bool isLoadingMore,
  }) = GuruSuccess;
  const factory GuruState.error(String message) = GuruError;
}
