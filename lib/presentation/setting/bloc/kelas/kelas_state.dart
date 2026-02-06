part of 'kelas_bloc.dart';

@freezed
class KelasState with _$KelasState {
  const factory KelasState.initial() = KelasInitial;
  const factory KelasState.loading() = KelasLoading;
  const factory KelasState.loaded(List<KelasResponseModel> kelas) = KelasLoaded;
  const factory KelasState.success(List<Kelas> kelas) = KelasSuccess;
  const factory KelasState.error(String message) = KelasError;
}
