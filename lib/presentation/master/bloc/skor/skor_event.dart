part of 'skor_bloc.dart';

@freezed
class SkorEvent with _$SkorEvent {
  const factory SkorEvent.started() = _Started;
  const factory SkorEvent.fetch() = _Fetch;
  const factory SkorEvent.searchSkor(String query) = _SearchSkor;
  const factory SkorEvent.addSkor(SkorRequestModel skor) = _AddSkor;
  const factory SkorEvent.deleteSkor(int id) = _DeleteSkor;
  const factory SkorEvent.updateSkor(Skor skor) = _UpdateSkor;
}