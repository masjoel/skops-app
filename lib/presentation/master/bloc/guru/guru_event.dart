part of 'guru_bloc.dart';

@freezed
class GuruEvent with _$GuruEvent {
  const factory GuruEvent.started() = _Started;
  const factory GuruEvent.listGuru(String search) = _ListGuru;
  const factory GuruEvent.fetch({String? search}) = _Fetch;
  const factory GuruEvent.loadMore() = _LoadMore;
  const factory GuruEvent.addGuru(GuruRequestModel guru) = _AddGuru;
  const factory GuruEvent.deleteGuru(int id) = _DeleteGuru;
  const factory GuruEvent.updateGuru(Guru guru) = _UpdateGuru;
  const factory GuruEvent.searchGuru(String query) = _SearchGuru;
  const factory GuruEvent.loadGuru() = _LoadGuru;
  const factory GuruEvent.refresh() = _Refresh;
}
