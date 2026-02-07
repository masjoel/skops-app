part of 'walikelas_bloc.dart';

@freezed
class WalikelasState with _$WalikelasState {
    const factory WalikelasState.initial() = WalikelasInitial;
  const factory WalikelasState.loading() = WalikelasLoading;
  const factory WalikelasState.loaded(List<Walikelas> walikelas) = WalikelasLoaded;
  const factory WalikelasState.sukses(List<Walikelas> walikelas) = WalikelasSukses;
  const factory WalikelasState.success({
    required List<Walikelas> walikelas,
    required int currentPage,
    required int lastPage,
    required bool hasReachedMax,
    required bool isLoadingMore,
  }) = WalikelasSuccess;
  const factory WalikelasState.error(String message) = WalikelasError;

}
