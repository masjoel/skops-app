part of 'siswa_bloc.dart';

@freezed
class SiswaState with _$SiswaState {
  const factory SiswaState.initial() = SiswaInitial;
  const factory SiswaState.loading() = SiswaLoading;
  const factory SiswaState.loaded(List<SiswaResponseModel> siswa) =
      SiswaLoaded;
  const factory SiswaState.success(List<Siswa> siswa) = SiswaSuccess;
  const factory SiswaState.error(String message) = SiswaError;

}
