part of 'walikelas_bloc.dart';

@freezed
class WalikelasEvent with _$WalikelasEvent {
  const factory WalikelasEvent.started() = _Started;
  const factory WalikelasEvent.fetch({String? search}) = _Fetch;
  const factory WalikelasEvent.loadMore() = _LoadMore;
  const factory WalikelasEvent.addWalikelas(WalikelasRequestModel walikelas) = _AddWalikelas;
  const factory WalikelasEvent.deleteWalikelas(int id) = _DeleteWalikelas;
  const factory WalikelasEvent.updateWalikelas(Walikelas walikelas) = _UpdateWalikelas;
  const factory WalikelasEvent.searchWalikelas(String query) = _SearchWalikelas;
  const factory WalikelasEvent.loadWalikelas() = _LoadWalikelas;
  const factory WalikelasEvent.refresh() = _Refresh;
}
