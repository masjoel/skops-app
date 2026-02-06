part of 'kelas_bloc.dart';

@freezed
class KelasEvent with _$KelasEvent {
  const factory KelasEvent.started() = _Started;
  const factory KelasEvent.fetch() = _Fetch;
  const factory KelasEvent.searchKelas(String query) = _SearchKelas;
  const factory KelasEvent.addKelas(KelasRequestModel kelas) = _AddKelas;
  const factory KelasEvent.deleteKelas(int id) = _DeleteKelas;
  const factory KelasEvent.updateKelas(Kelas kelas) =
      _UpdateKelas;
}
