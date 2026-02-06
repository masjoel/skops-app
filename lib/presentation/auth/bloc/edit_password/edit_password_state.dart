part of 'edit_password_bloc.dart';

@freezed
class EditPasswordState with _$EditPasswordState {
  const factory EditPasswordState.initial() = Initial;
  const factory EditPasswordState.loading() = Loading;
  const factory EditPasswordState.loaded(AuthResponseModel data) = Loaded;
  const factory EditPasswordState.error(String message) = Error;

}
