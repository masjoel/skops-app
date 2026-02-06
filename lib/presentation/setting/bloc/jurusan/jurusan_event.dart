part of 'jurusan_bloc.dart';

@freezed
class JurusanEvent with _$JurusanEvent {
  const factory JurusanEvent.started() = _Started;
  const factory JurusanEvent.fetch() = _Fetch;
  const factory JurusanEvent.searchJurusan(String query) = _SearchJurusan;
  const factory JurusanEvent.addJurusan(JurusanRequestModel jurusan) = _AddJurusan;
  const factory JurusanEvent.deleteJurusan(int id) = _DeleteJurusan;
  const factory JurusanEvent.updateJurusan(Jurusan jurusan) =
      _UpdateJurusan;
}