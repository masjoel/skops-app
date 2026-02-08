part of 'skor_bloc.dart';

@freezed
class SkorState with _$SkorState {
  const factory SkorState.initial() = SkorInitial;
  const factory SkorState.loading() = SkorLoading;
  const factory SkorState.loaded(List<SkorMasterResponseModel> skor) = SkorLoaded;
  const factory SkorState.success(List<Skor> skor) = SkorSuccess;
  const factory SkorState.error(String message) = SkorError;
}
