part of 'profil_bloc.dart';

@freezed
class ProfilEvent with _$ProfilEvent {
  const factory ProfilEvent.started() = _Started;
  const factory ProfilEvent.fetch() = _Fetch;
  const factory ProfilEvent.updateProfil(Profil profil) = _UpdateProfil;
}
