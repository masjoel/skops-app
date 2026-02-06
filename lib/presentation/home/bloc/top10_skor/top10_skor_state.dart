part of 'top10_skor_bloc.dart';

@freezed
class Top10SkorState with _$Top10SkorState {
  const factory Top10SkorState.initial() = _Initial;
  const factory Top10SkorState.loading() = Top10SkorLoading;
  const factory Top10SkorState.success(List<Top10Skor> top10skor) = Top10SkorSuccess;
  const factory Top10SkorState.error(String message) = Top10SkorError;

}
