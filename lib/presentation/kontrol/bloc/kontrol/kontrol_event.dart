part of 'kontrol_bloc.dart';

@freezed
class KontrolEvent with _$KontrolEvent {
  const factory KontrolEvent.started() = _Started;
  const factory KontrolEvent.fetch({String? search}) = _Fetch;
  const factory KontrolEvent.loadMore() = _LoadMore;
  const factory KontrolEvent.addKontrol(KontrolRequestModel kontrol) =
      _AddKontrol;
  const factory KontrolEvent.deleteKontrol(int id) = _DeleteKontrol;
  const factory KontrolEvent.updateKontrol(Kontrol kontrol) = _UpdateKontrol;
  const factory KontrolEvent.searchKontrol(String query) = _SearchKontrol;
  const factory KontrolEvent.loadKontrol() = _LoadKontrol;
  const factory KontrolEvent.refresh() = _Refresh;
}
