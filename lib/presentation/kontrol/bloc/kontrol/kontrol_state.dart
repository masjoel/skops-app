part of 'kontrol_bloc.dart';

@freezed
class KontrolState with _$KontrolState {
  const factory KontrolState.initial() = KontrolInitial;
  const factory KontrolState.loading() = KontrolLoading;
  const factory KontrolState.loaded(List<Kontrol> kontrol) = KontrolLoaded;
  const factory KontrolState.sukses(List<Kontrol> kontrol) = KontrolSukses;
  const factory KontrolState.success({
    required List<Kontrol> kontrol,
    required int currentPage,
    required int lastPage,
    required bool hasReachedMax,
    required bool isLoadingMore,
  }) = KontrolSuccess;
  const factory KontrolState.error(String message) = KontrolError;
}
