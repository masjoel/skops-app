part of 'profil_bloc.dart';

@freezed
class ProfilState with _$ProfilState {
  const factory ProfilState.initial() = ProfilInitial;
  const factory ProfilState.loading() = ProfilLoading;
  const factory ProfilState.loaded(Profil profil) = ProfilLoaded;
  const factory ProfilState.success(Profil profil) = ProfilSuccess;
  const factory ProfilState.error(String message) = ProfilError;
}
