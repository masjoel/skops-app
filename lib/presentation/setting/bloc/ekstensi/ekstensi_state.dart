part of 'ekstensi_bloc.dart';

@freezed
class EkstensiState with _$EkstensiState {
  const factory EkstensiState.initial() = EkstensiInitial;
  const factory EkstensiState.loading() = EkstensiLoading;
  const factory EkstensiState.loaded(List<EkstensiResponseModel> ekstensi) =
      EkstensiLoaded;
  const factory EkstensiState.success(List<KelasExt> ekstensi) = EkstensiSuccess;
  const factory EkstensiState.error(String message) = EkstensiError;
}
