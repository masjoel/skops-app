part of 'jenis_skor_bloc.dart';

@freezed
class JenisSkorEvent with _$JenisSkorEvent {
  const factory JenisSkorEvent.started() = _Started;
    const factory JenisSkorEvent.fetch() = _Fetch;
  const factory JenisSkorEvent.searchTop10(String query) =
      _SearchSkor;
}