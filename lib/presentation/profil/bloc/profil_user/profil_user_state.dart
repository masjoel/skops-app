part of 'profil_user_bloc.dart';

@freezed
class ProfilUserState with _$ProfilUserState {
  const factory ProfilUserState.initial() = ProfilUserInitial;
  const factory ProfilUserState.loading() = ProfilUserLoading;
  const factory ProfilUserState.loaded(ProfilUser profiluser) = ProfilUserLoaded;
  const factory ProfilUserState.success(ProfilUser profiluser) = ProfilUserSuccess;
  const factory ProfilUserState.error(String message) = ProfilUserError;
}

