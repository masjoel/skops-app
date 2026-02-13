part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.loaded(List<SingleUser> singleuser) = UserLoaded;
  const factory UserState.sukses(List<SingleUser> singleuser) = UserSukses;
  const factory UserState.success({
    required List<SingleUser> singleuser,
    required int currentPage,
    required int lastPage,
    required bool hasReachedMax,
    required bool isLoadingMore,
  }) = UserSuccess;
  const factory UserState.error(String message) = UserError;
}

