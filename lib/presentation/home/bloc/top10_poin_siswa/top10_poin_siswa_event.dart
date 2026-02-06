part of 'top10_poin_siswa_bloc.dart';

@freezed
class Top10PoinSiswaEvent with _$Top10PoinSiswaEvent {
  const factory Top10PoinSiswaEvent.started() = _Started;
  const factory Top10PoinSiswaEvent.fetch() = _Fetch;
  const factory Top10PoinSiswaEvent.searchTop10(String query) =
      _SearchTop10;
}
