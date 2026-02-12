part of 'profil_user_bloc.dart';

@freezed
class ProfilUserEvent with _$ProfilUserEvent {
  const factory ProfilUserEvent.started() = _Started;
  const factory ProfilUserEvent.fetch() = _Fetch;
  const factory ProfilUserEvent.updateProfilUser(ProfilUser profiluser) = _UpdateProfilUser;
}
