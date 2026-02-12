// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profil_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfilUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilUserEvent()';
}


}

/// @nodoc
class $ProfilUserEventCopyWith<$Res>  {
$ProfilUserEventCopyWith(ProfilUserEvent _, $Res Function(ProfilUserEvent) __);
}


/// Adds pattern-matching-related methods to [ProfilUserEvent].
extension ProfilUserEventPatterns on ProfilUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _UpdateProfilUser value)?  updateProfilUser,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _UpdateProfilUser() when updateProfilUser != null:
return updateProfilUser(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _UpdateProfilUser value)  updateProfilUser,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _UpdateProfilUser():
return updateProfilUser(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _UpdateProfilUser value)?  updateProfilUser,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _UpdateProfilUser() when updateProfilUser != null:
return updateProfilUser(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetch,TResult Function( ProfilUser profiluser)?  updateProfilUser,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _UpdateProfilUser() when updateProfilUser != null:
return updateProfilUser(_that.profiluser);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetch,required TResult Function( ProfilUser profiluser)  updateProfilUser,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch();case _UpdateProfilUser():
return updateProfilUser(_that.profiluser);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetch,TResult? Function( ProfilUser profiluser)?  updateProfilUser,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _UpdateProfilUser() when updateProfilUser != null:
return updateProfilUser(_that.profiluser);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProfilUserEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilUserEvent.started()';
}


}




/// @nodoc


class _Fetch implements ProfilUserEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilUserEvent.fetch()';
}


}




/// @nodoc


class _UpdateProfilUser implements ProfilUserEvent {
  const _UpdateProfilUser(this.profiluser);
  

 final  ProfilUser profiluser;

/// Create a copy of ProfilUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfilUserCopyWith<_UpdateProfilUser> get copyWith => __$UpdateProfilUserCopyWithImpl<_UpdateProfilUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfilUser&&(identical(other.profiluser, profiluser) || other.profiluser == profiluser));
}


@override
int get hashCode => Object.hash(runtimeType,profiluser);

@override
String toString() {
  return 'ProfilUserEvent.updateProfilUser(profiluser: $profiluser)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfilUserCopyWith<$Res> implements $ProfilUserEventCopyWith<$Res> {
  factory _$UpdateProfilUserCopyWith(_UpdateProfilUser value, $Res Function(_UpdateProfilUser) _then) = __$UpdateProfilUserCopyWithImpl;
@useResult
$Res call({
 ProfilUser profiluser
});




}
/// @nodoc
class __$UpdateProfilUserCopyWithImpl<$Res>
    implements _$UpdateProfilUserCopyWith<$Res> {
  __$UpdateProfilUserCopyWithImpl(this._self, this._then);

  final _UpdateProfilUser _self;
  final $Res Function(_UpdateProfilUser) _then;

/// Create a copy of ProfilUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profiluser = null,}) {
  return _then(_UpdateProfilUser(
null == profiluser ? _self.profiluser : profiluser // ignore: cast_nullable_to_non_nullable
as ProfilUser,
  ));
}


}

/// @nodoc
mixin _$ProfilUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilUserState()';
}


}

/// @nodoc
class $ProfilUserStateCopyWith<$Res>  {
$ProfilUserStateCopyWith(ProfilUserState _, $Res Function(ProfilUserState) __);
}


/// Adds pattern-matching-related methods to [ProfilUserState].
extension ProfilUserStatePatterns on ProfilUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfilUserInitial value)?  initial,TResult Function( ProfilUserLoading value)?  loading,TResult Function( ProfilUserLoaded value)?  loaded,TResult Function( ProfilUserSuccess value)?  success,TResult Function( ProfilUserError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfilUserInitial() when initial != null:
return initial(_that);case ProfilUserLoading() when loading != null:
return loading(_that);case ProfilUserLoaded() when loaded != null:
return loaded(_that);case ProfilUserSuccess() when success != null:
return success(_that);case ProfilUserError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfilUserInitial value)  initial,required TResult Function( ProfilUserLoading value)  loading,required TResult Function( ProfilUserLoaded value)  loaded,required TResult Function( ProfilUserSuccess value)  success,required TResult Function( ProfilUserError value)  error,}){
final _that = this;
switch (_that) {
case ProfilUserInitial():
return initial(_that);case ProfilUserLoading():
return loading(_that);case ProfilUserLoaded():
return loaded(_that);case ProfilUserSuccess():
return success(_that);case ProfilUserError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfilUserInitial value)?  initial,TResult? Function( ProfilUserLoading value)?  loading,TResult? Function( ProfilUserLoaded value)?  loaded,TResult? Function( ProfilUserSuccess value)?  success,TResult? Function( ProfilUserError value)?  error,}){
final _that = this;
switch (_that) {
case ProfilUserInitial() when initial != null:
return initial(_that);case ProfilUserLoading() when loading != null:
return loading(_that);case ProfilUserLoaded() when loaded != null:
return loaded(_that);case ProfilUserSuccess() when success != null:
return success(_that);case ProfilUserError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ProfilUser profiluser)?  loaded,TResult Function( ProfilUser profiluser)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfilUserInitial() when initial != null:
return initial();case ProfilUserLoading() when loading != null:
return loading();case ProfilUserLoaded() when loaded != null:
return loaded(_that.profiluser);case ProfilUserSuccess() when success != null:
return success(_that.profiluser);case ProfilUserError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ProfilUser profiluser)  loaded,required TResult Function( ProfilUser profiluser)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ProfilUserInitial():
return initial();case ProfilUserLoading():
return loading();case ProfilUserLoaded():
return loaded(_that.profiluser);case ProfilUserSuccess():
return success(_that.profiluser);case ProfilUserError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ProfilUser profiluser)?  loaded,TResult? Function( ProfilUser profiluser)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ProfilUserInitial() when initial != null:
return initial();case ProfilUserLoading() when loading != null:
return loading();case ProfilUserLoaded() when loaded != null:
return loaded(_that.profiluser);case ProfilUserSuccess() when success != null:
return success(_that.profiluser);case ProfilUserError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProfilUserInitial implements ProfilUserState {
  const ProfilUserInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilUserInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilUserState.initial()';
}


}




/// @nodoc


class ProfilUserLoading implements ProfilUserState {
  const ProfilUserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilUserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilUserState.loading()';
}


}




/// @nodoc


class ProfilUserLoaded implements ProfilUserState {
  const ProfilUserLoaded(this.profiluser);
  

 final  ProfilUser profiluser;

/// Create a copy of ProfilUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilUserLoadedCopyWith<ProfilUserLoaded> get copyWith => _$ProfilUserLoadedCopyWithImpl<ProfilUserLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilUserLoaded&&(identical(other.profiluser, profiluser) || other.profiluser == profiluser));
}


@override
int get hashCode => Object.hash(runtimeType,profiluser);

@override
String toString() {
  return 'ProfilUserState.loaded(profiluser: $profiluser)';
}


}

/// @nodoc
abstract mixin class $ProfilUserLoadedCopyWith<$Res> implements $ProfilUserStateCopyWith<$Res> {
  factory $ProfilUserLoadedCopyWith(ProfilUserLoaded value, $Res Function(ProfilUserLoaded) _then) = _$ProfilUserLoadedCopyWithImpl;
@useResult
$Res call({
 ProfilUser profiluser
});




}
/// @nodoc
class _$ProfilUserLoadedCopyWithImpl<$Res>
    implements $ProfilUserLoadedCopyWith<$Res> {
  _$ProfilUserLoadedCopyWithImpl(this._self, this._then);

  final ProfilUserLoaded _self;
  final $Res Function(ProfilUserLoaded) _then;

/// Create a copy of ProfilUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profiluser = null,}) {
  return _then(ProfilUserLoaded(
null == profiluser ? _self.profiluser : profiluser // ignore: cast_nullable_to_non_nullable
as ProfilUser,
  ));
}


}

/// @nodoc


class ProfilUserSuccess implements ProfilUserState {
  const ProfilUserSuccess(this.profiluser);
  

 final  ProfilUser profiluser;

/// Create a copy of ProfilUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilUserSuccessCopyWith<ProfilUserSuccess> get copyWith => _$ProfilUserSuccessCopyWithImpl<ProfilUserSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilUserSuccess&&(identical(other.profiluser, profiluser) || other.profiluser == profiluser));
}


@override
int get hashCode => Object.hash(runtimeType,profiluser);

@override
String toString() {
  return 'ProfilUserState.success(profiluser: $profiluser)';
}


}

/// @nodoc
abstract mixin class $ProfilUserSuccessCopyWith<$Res> implements $ProfilUserStateCopyWith<$Res> {
  factory $ProfilUserSuccessCopyWith(ProfilUserSuccess value, $Res Function(ProfilUserSuccess) _then) = _$ProfilUserSuccessCopyWithImpl;
@useResult
$Res call({
 ProfilUser profiluser
});




}
/// @nodoc
class _$ProfilUserSuccessCopyWithImpl<$Res>
    implements $ProfilUserSuccessCopyWith<$Res> {
  _$ProfilUserSuccessCopyWithImpl(this._self, this._then);

  final ProfilUserSuccess _self;
  final $Res Function(ProfilUserSuccess) _then;

/// Create a copy of ProfilUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profiluser = null,}) {
  return _then(ProfilUserSuccess(
null == profiluser ? _self.profiluser : profiluser // ignore: cast_nullable_to_non_nullable
as ProfilUser,
  ));
}


}

/// @nodoc


class ProfilUserError implements ProfilUserState {
  const ProfilUserError(this.message);
  

 final  String message;

/// Create a copy of ProfilUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilUserErrorCopyWith<ProfilUserError> get copyWith => _$ProfilUserErrorCopyWithImpl<ProfilUserError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilUserError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfilUserState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfilUserErrorCopyWith<$Res> implements $ProfilUserStateCopyWith<$Res> {
  factory $ProfilUserErrorCopyWith(ProfilUserError value, $Res Function(ProfilUserError) _then) = _$ProfilUserErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProfilUserErrorCopyWithImpl<$Res>
    implements $ProfilUserErrorCopyWith<$Res> {
  _$ProfilUserErrorCopyWithImpl(this._self, this._then);

  final ProfilUserError _self;
  final $Res Function(ProfilUserError) _then;

/// Create a copy of ProfilUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProfilUserError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
