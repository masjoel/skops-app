part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.fetch({String? search}) = _Fetch;
  const factory UserEvent.loadMore() = _LoadMore;
  const factory UserEvent.addUser(UserRequestModel singleuser) = _AddUser;
  const factory UserEvent.deleteUser(int id) = _DeleteUser;
  const factory UserEvent.updateUser(SingleUser singleuser) = _UpdateUser;
  const factory UserEvent.searchUser(String query) = _SearchUser;
  const factory UserEvent.loadUser() = _LoadUser;
  const factory UserEvent.refresh() = _Refresh;
}
