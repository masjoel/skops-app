// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _LoadMore value)?  loadMore,TResult Function( _AddUser value)?  addUser,TResult Function( _DeleteUser value)?  deleteUser,TResult Function( _UpdateUser value)?  updateUser,TResult Function( _SearchUser value)?  searchUser,TResult Function( _LoadUser value)?  loadUser,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddUser() when addUser != null:
return addUser(_that);case _DeleteUser() when deleteUser != null:
return deleteUser(_that);case _UpdateUser() when updateUser != null:
return updateUser(_that);case _SearchUser() when searchUser != null:
return searchUser(_that);case _LoadUser() when loadUser != null:
return loadUser(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _AddUser value)  addUser,required TResult Function( _DeleteUser value)  deleteUser,required TResult Function( _UpdateUser value)  updateUser,required TResult Function( _SearchUser value)  searchUser,required TResult Function( _LoadUser value)  loadUser,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _LoadMore():
return loadMore(_that);case _AddUser():
return addUser(_that);case _DeleteUser():
return deleteUser(_that);case _UpdateUser():
return updateUser(_that);case _SearchUser():
return searchUser(_that);case _LoadUser():
return loadUser(_that);case _Refresh():
return refresh(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _AddUser value)?  addUser,TResult? Function( _DeleteUser value)?  deleteUser,TResult? Function( _UpdateUser value)?  updateUser,TResult? Function( _SearchUser value)?  searchUser,TResult? Function( _LoadUser value)?  loadUser,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddUser() when addUser != null:
return addUser(_that);case _DeleteUser() when deleteUser != null:
return deleteUser(_that);case _UpdateUser() when updateUser != null:
return updateUser(_that);case _SearchUser() when searchUser != null:
return searchUser(_that);case _LoadUser() when loadUser != null:
return loadUser(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? search)?  fetch,TResult Function()?  loadMore,TResult Function( UserRequestModel singleuser)?  addUser,TResult Function( int id)?  deleteUser,TResult Function( SingleUser singleuser)?  updateUser,TResult Function( String query)?  searchUser,TResult Function()?  loadUser,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddUser() when addUser != null:
return addUser(_that.singleuser);case _DeleteUser() when deleteUser != null:
return deleteUser(_that.id);case _UpdateUser() when updateUser != null:
return updateUser(_that.singleuser);case _SearchUser() when searchUser != null:
return searchUser(_that.query);case _LoadUser() when loadUser != null:
return loadUser();case _Refresh() when refresh != null:
return refresh();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? search)  fetch,required TResult Function()  loadMore,required TResult Function( UserRequestModel singleuser)  addUser,required TResult Function( int id)  deleteUser,required TResult Function( SingleUser singleuser)  updateUser,required TResult Function( String query)  searchUser,required TResult Function()  loadUser,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch(_that.search);case _LoadMore():
return loadMore();case _AddUser():
return addUser(_that.singleuser);case _DeleteUser():
return deleteUser(_that.id);case _UpdateUser():
return updateUser(_that.singleuser);case _SearchUser():
return searchUser(_that.query);case _LoadUser():
return loadUser();case _Refresh():
return refresh();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? search)?  fetch,TResult? Function()?  loadMore,TResult? Function( UserRequestModel singleuser)?  addUser,TResult? Function( int id)?  deleteUser,TResult? Function( SingleUser singleuser)?  updateUser,TResult? Function( String query)?  searchUser,TResult? Function()?  loadUser,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddUser() when addUser != null:
return addUser(_that.singleuser);case _DeleteUser() when deleteUser != null:
return deleteUser(_that.id);case _UpdateUser() when updateUser != null:
return updateUser(_that.singleuser);case _SearchUser() when searchUser != null:
return searchUser(_that.query);case _LoadUser() when loadUser != null:
return loadUser();case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.started()';
}


}




/// @nodoc


class _Fetch implements UserEvent {
  const _Fetch({this.search});
  

 final  String? search;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,search);

@override
String toString() {
  return 'UserEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) = __$FetchCopyWithImpl;
@useResult
$Res call({
 String? search
});




}
/// @nodoc
class __$FetchCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(_Fetch(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadMore implements UserEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.loadMore()';
}


}




/// @nodoc


class _AddUser implements UserEvent {
  const _AddUser(this.singleuser);
  

 final  UserRequestModel singleuser;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddUserCopyWith<_AddUser> get copyWith => __$AddUserCopyWithImpl<_AddUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddUser&&(identical(other.singleuser, singleuser) || other.singleuser == singleuser));
}


@override
int get hashCode => Object.hash(runtimeType,singleuser);

@override
String toString() {
  return 'UserEvent.addUser(singleuser: $singleuser)';
}


}

/// @nodoc
abstract mixin class _$AddUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$AddUserCopyWith(_AddUser value, $Res Function(_AddUser) _then) = __$AddUserCopyWithImpl;
@useResult
$Res call({
 UserRequestModel singleuser
});




}
/// @nodoc
class __$AddUserCopyWithImpl<$Res>
    implements _$AddUserCopyWith<$Res> {
  __$AddUserCopyWithImpl(this._self, this._then);

  final _AddUser _self;
  final $Res Function(_AddUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? singleuser = null,}) {
  return _then(_AddUser(
null == singleuser ? _self.singleuser : singleuser // ignore: cast_nullable_to_non_nullable
as UserRequestModel,
  ));
}


}

/// @nodoc


class _DeleteUser implements UserEvent {
  const _DeleteUser(this.id);
  

 final  int id;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserCopyWith<_DeleteUser> get copyWith => __$DeleteUserCopyWithImpl<_DeleteUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUser&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'UserEvent.deleteUser(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$DeleteUserCopyWith(_DeleteUser value, $Res Function(_DeleteUser) _then) = __$DeleteUserCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteUserCopyWithImpl<$Res>
    implements _$DeleteUserCopyWith<$Res> {
  __$DeleteUserCopyWithImpl(this._self, this._then);

  final _DeleteUser _self;
  final $Res Function(_DeleteUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateUser implements UserEvent {
  const _UpdateUser(this.singleuser);
  

 final  SingleUser singleuser;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserCopyWith<_UpdateUser> get copyWith => __$UpdateUserCopyWithImpl<_UpdateUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUser&&(identical(other.singleuser, singleuser) || other.singleuser == singleuser));
}


@override
int get hashCode => Object.hash(runtimeType,singleuser);

@override
String toString() {
  return 'UserEvent.updateUser(singleuser: $singleuser)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UpdateUserCopyWith(_UpdateUser value, $Res Function(_UpdateUser) _then) = __$UpdateUserCopyWithImpl;
@useResult
$Res call({
 SingleUser singleuser
});




}
/// @nodoc
class __$UpdateUserCopyWithImpl<$Res>
    implements _$UpdateUserCopyWith<$Res> {
  __$UpdateUserCopyWithImpl(this._self, this._then);

  final _UpdateUser _self;
  final $Res Function(_UpdateUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? singleuser = null,}) {
  return _then(_UpdateUser(
null == singleuser ? _self.singleuser : singleuser // ignore: cast_nullable_to_non_nullable
as SingleUser,
  ));
}


}

/// @nodoc


class _SearchUser implements UserEvent {
  const _SearchUser(this.query);
  

 final  String query;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchUserCopyWith<_SearchUser> get copyWith => __$SearchUserCopyWithImpl<_SearchUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchUser&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'UserEvent.searchUser(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchUserCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$SearchUserCopyWith(_SearchUser value, $Res Function(_SearchUser) _then) = __$SearchUserCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchUserCopyWithImpl<$Res>
    implements _$SearchUserCopyWith<$Res> {
  __$SearchUserCopyWithImpl(this._self, this._then);

  final _SearchUser _self;
  final $Res Function(_SearchUser) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchUser(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadUser implements UserEvent {
  const _LoadUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.loadUser()';
}


}




/// @nodoc


class _Refresh implements UserEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.refresh()';
}


}




/// @nodoc
mixin _$UserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState()';
}


}

/// @nodoc
class $UserStateCopyWith<$Res>  {
$UserStateCopyWith(UserState _, $Res Function(UserState) __);
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( UserLoading value)?  loading,TResult Function( UserLoaded value)?  loaded,TResult Function( UserSukses value)?  sukses,TResult Function( UserSuccess value)?  success,TResult Function( UserError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UserLoading() when loading != null:
return loading(_that);case UserLoaded() when loaded != null:
return loaded(_that);case UserSukses() when sukses != null:
return sukses(_that);case UserSuccess() when success != null:
return success(_that);case UserError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( UserLoading value)  loading,required TResult Function( UserLoaded value)  loaded,required TResult Function( UserSukses value)  sukses,required TResult Function( UserSuccess value)  success,required TResult Function( UserError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case UserLoading():
return loading(_that);case UserLoaded():
return loaded(_that);case UserSukses():
return sukses(_that);case UserSuccess():
return success(_that);case UserError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( UserLoading value)?  loading,TResult? Function( UserLoaded value)?  loaded,TResult? Function( UserSukses value)?  sukses,TResult? Function( UserSuccess value)?  success,TResult? Function( UserError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UserLoading() when loading != null:
return loading(_that);case UserLoaded() when loaded != null:
return loaded(_that);case UserSukses() when sukses != null:
return sukses(_that);case UserSuccess() when success != null:
return success(_that);case UserError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<SingleUser> singleuser)?  loaded,TResult Function( List<SingleUser> singleuser)?  sukses,TResult Function( List<SingleUser> singleuser,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UserLoading() when loading != null:
return loading();case UserLoaded() when loaded != null:
return loaded(_that.singleuser);case UserSukses() when sukses != null:
return sukses(_that.singleuser);case UserSuccess() when success != null:
return success(_that.singleuser,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case UserError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<SingleUser> singleuser)  loaded,required TResult Function( List<SingleUser> singleuser)  sukses,required TResult Function( List<SingleUser> singleuser,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case UserLoading():
return loading();case UserLoaded():
return loaded(_that.singleuser);case UserSukses():
return sukses(_that.singleuser);case UserSuccess():
return success(_that.singleuser,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case UserError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<SingleUser> singleuser)?  loaded,TResult? Function( List<SingleUser> singleuser)?  sukses,TResult? Function( List<SingleUser> singleuser,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UserLoading() when loading != null:
return loading();case UserLoaded() when loaded != null:
return loaded(_that.singleuser);case UserSukses() when sukses != null:
return sukses(_that.singleuser);case UserSuccess() when success != null:
return success(_that.singleuser,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case UserError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.initial()';
}


}




/// @nodoc


class UserLoading implements UserState {
  const UserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.loading()';
}


}




/// @nodoc


class UserLoaded implements UserState {
  const UserLoaded(final  List<SingleUser> singleuser): _singleuser = singleuser;
  

 final  List<SingleUser> _singleuser;
 List<SingleUser> get singleuser {
  if (_singleuser is EqualUnmodifiableListView) return _singleuser;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_singleuser);
}


/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLoadedCopyWith<UserLoaded> get copyWith => _$UserLoadedCopyWithImpl<UserLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoaded&&const DeepCollectionEquality().equals(other._singleuser, _singleuser));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_singleuser));

@override
String toString() {
  return 'UserState.loaded(singleuser: $singleuser)';
}


}

/// @nodoc
abstract mixin class $UserLoadedCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserLoadedCopyWith(UserLoaded value, $Res Function(UserLoaded) _then) = _$UserLoadedCopyWithImpl;
@useResult
$Res call({
 List<SingleUser> singleuser
});




}
/// @nodoc
class _$UserLoadedCopyWithImpl<$Res>
    implements $UserLoadedCopyWith<$Res> {
  _$UserLoadedCopyWithImpl(this._self, this._then);

  final UserLoaded _self;
  final $Res Function(UserLoaded) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? singleuser = null,}) {
  return _then(UserLoaded(
null == singleuser ? _self._singleuser : singleuser // ignore: cast_nullable_to_non_nullable
as List<SingleUser>,
  ));
}


}

/// @nodoc


class UserSukses implements UserState {
  const UserSukses(final  List<SingleUser> singleuser): _singleuser = singleuser;
  

 final  List<SingleUser> _singleuser;
 List<SingleUser> get singleuser {
  if (_singleuser is EqualUnmodifiableListView) return _singleuser;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_singleuser);
}


/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSuksesCopyWith<UserSukses> get copyWith => _$UserSuksesCopyWithImpl<UserSukses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSukses&&const DeepCollectionEquality().equals(other._singleuser, _singleuser));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_singleuser));

@override
String toString() {
  return 'UserState.sukses(singleuser: $singleuser)';
}


}

/// @nodoc
abstract mixin class $UserSuksesCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserSuksesCopyWith(UserSukses value, $Res Function(UserSukses) _then) = _$UserSuksesCopyWithImpl;
@useResult
$Res call({
 List<SingleUser> singleuser
});




}
/// @nodoc
class _$UserSuksesCopyWithImpl<$Res>
    implements $UserSuksesCopyWith<$Res> {
  _$UserSuksesCopyWithImpl(this._self, this._then);

  final UserSukses _self;
  final $Res Function(UserSukses) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? singleuser = null,}) {
  return _then(UserSukses(
null == singleuser ? _self._singleuser : singleuser // ignore: cast_nullable_to_non_nullable
as List<SingleUser>,
  ));
}


}

/// @nodoc


class UserSuccess implements UserState {
  const UserSuccess({required final  List<SingleUser> singleuser, required this.currentPage, required this.lastPage, required this.hasReachedMax, required this.isLoadingMore}): _singleuser = singleuser;
  

 final  List<SingleUser> _singleuser;
 List<SingleUser> get singleuser {
  if (_singleuser is EqualUnmodifiableListView) return _singleuser;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_singleuser);
}

 final  int currentPage;
 final  int lastPage;
 final  bool hasReachedMax;
 final  bool isLoadingMore;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSuccessCopyWith<UserSuccess> get copyWith => _$UserSuccessCopyWithImpl<UserSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSuccess&&const DeepCollectionEquality().equals(other._singleuser, _singleuser)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_singleuser),currentPage,lastPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'UserState.success(singleuser: $singleuser, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $UserSuccessCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserSuccessCopyWith(UserSuccess value, $Res Function(UserSuccess) _then) = _$UserSuccessCopyWithImpl;
@useResult
$Res call({
 List<SingleUser> singleuser, int currentPage, int lastPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$UserSuccessCopyWithImpl<$Res>
    implements $UserSuccessCopyWith<$Res> {
  _$UserSuccessCopyWithImpl(this._self, this._then);

  final UserSuccess _self;
  final $Res Function(UserSuccess) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? singleuser = null,Object? currentPage = null,Object? lastPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(UserSuccess(
singleuser: null == singleuser ? _self._singleuser : singleuser // ignore: cast_nullable_to_non_nullable
as List<SingleUser>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class UserError implements UserState {
  const UserError(this.message);
  

 final  String message;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserErrorCopyWith<UserError> get copyWith => _$UserErrorCopyWithImpl<UserError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserErrorCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserErrorCopyWith(UserError value, $Res Function(UserError) _then) = _$UserErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserErrorCopyWithImpl<$Res>
    implements $UserErrorCopyWith<$Res> {
  _$UserErrorCopyWithImpl(this._self, this._then);

  final UserError _self;
  final $Res Function(UserError) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UserError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
