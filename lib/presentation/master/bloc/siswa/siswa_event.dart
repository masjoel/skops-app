part of 'siswa_bloc.dart';

@freezed
class SiswaEvent with _$SiswaEvent {
  const factory SiswaEvent.started() = _Started;
  const factory SiswaEvent.fetch({String? search}) = _Fetch;
  const factory SiswaEvent.loadMore() = _LoadMore;
  const factory SiswaEvent.addSiswa(SiswaRequestModel siswa) = _AddSiswa;
  const factory SiswaEvent.deleteSiswa(int id) = _DeleteSiswa;
  const factory SiswaEvent.updateSiswa(Siswa siswa) = _UpdateSiswa;
  const factory SiswaEvent.searchSiswa(String query) = _SearchSiswa;
  const factory SiswaEvent.loadSiswa() = _LoadSiswa;
  const factory SiswaEvent.refresh() = _Refresh;
}
