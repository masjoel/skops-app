part of 'jurusan_bloc.dart';

@freezed
class JurusanState with _$JurusanState {
  const factory JurusanState.initial() = JurusanInitial;
  const factory JurusanState.loading() = JurusanLoading;
  const factory JurusanState.loaded(List<JurusanResponseModel> jurusan) =
      JurusanLoaded;
  const factory JurusanState.success(List<Jurusan> jurusan) = JurusanSuccess;
  const factory JurusanState.error(String message) = JurusanError;
}
