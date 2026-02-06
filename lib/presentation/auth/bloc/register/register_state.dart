part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterStateInitial;
  const factory RegisterState.loading() = RegisterStateLoading;
  const factory RegisterState.loaded(AuthResponseModel data) = RegisterStateLoaded;
  const factory RegisterState.error(String message) = RegisterStateError;
}
