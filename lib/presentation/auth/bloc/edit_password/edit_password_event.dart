part of 'edit_password_bloc.dart';

@freezed
class EditPasswordEvent with _$EditPasswordEvent {
  const factory EditPasswordEvent.started() = _Started;
  const factory EditPasswordEvent.changePassword(
      ChangePasswordRequestModel model) = _ChangePassword;
}
