part of 'ekstensi_bloc.dart';

@freezed
class EkstensiEvent with _$EkstensiEvent {
  const factory EkstensiEvent.started() = _Started;
  const factory EkstensiEvent.fetch() = _Fetch;
  const factory EkstensiEvent.searchEkstensi(String query) = _SearchEkstensi;
  const factory EkstensiEvent.addEkstensi(EkstensiRequestModel ekstensi) =
      _AddEkstensi;
  const factory EkstensiEvent.deleteEkstensi(int id) = _DeleteEkstensi;
  const factory EkstensiEvent.updateEkstensi(KelasExt ekstensi) =
      _UpdateEkstensi;
}
