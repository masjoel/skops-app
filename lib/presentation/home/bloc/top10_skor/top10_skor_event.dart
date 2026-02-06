part of 'top10_skor_bloc.dart';

@freezed
class Top10SkorEvent with _$Top10SkorEvent {
  const factory Top10SkorEvent.started() = _Started;
  const factory Top10SkorEvent.fetch() = _Fetch;
  const factory Top10SkorEvent.searchTop10(String query) =
      _SearchTop10;

}