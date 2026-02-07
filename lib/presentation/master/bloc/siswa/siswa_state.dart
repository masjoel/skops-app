part of 'siswa_bloc.dart';

@freezed
class SiswaState with _$SiswaState {
  const factory SiswaState.initial() = SiswaInitial;
  const factory SiswaState.loading() = SiswaLoading;
  const factory SiswaState.loaded(List<Siswa> siswa) = SiswaLoaded;
  const factory SiswaState.sukses(List<Siswa> siswa) = SiswaSukses;
  const factory SiswaState.success({
    required List<Siswa> siswa,
    required int currentPage,
    required int lastPage,
    required bool hasReachedMax,
    required bool isLoadingMore,
  }) = SiswaSuccess;
  const factory SiswaState.error(String message) = SiswaError;
}
