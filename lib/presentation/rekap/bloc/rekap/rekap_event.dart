part of 'rekap_bloc.dart';

@freezed
class RekapEvent with _$RekapEvent {
  const factory RekapEvent.started() = _Started;
  const factory RekapEvent.fetch({String? search}) = _Fetch;
  const factory RekapEvent.loadMore() = _LoadMore;
  // const factory RekapEvent.addRekap(RekapRequestModel rekap) = _AddRekap;
  const factory RekapEvent.deleteRekap(int id) = _DeleteRekap;
  const factory RekapEvent.updateRekap(RekapSingle rekap) = _UpdateRekap;
  const factory RekapEvent.searchRekap(String query) = _SearchRekap;
  const factory RekapEvent.loadRekap() = _LoadRekap;
  const factory RekapEvent.refresh() = _Refresh;
}
