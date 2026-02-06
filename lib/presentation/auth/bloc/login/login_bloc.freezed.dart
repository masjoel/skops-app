// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Login value)?  login,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Login() when login != null:
return login(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Login value)  login,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Login():
return login(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Login value)?  login,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Login() when login != null:
return login(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( LoginRequestModel model)?  login,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Login() when login != null:
return login(_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( LoginRequestModel model)  login,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Login():
return login(_that.model);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( LoginRequestModel model)?  login,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Login() when login != null:
return login(_that.model);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements LoginEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.started()';
}


}




/// @nodoc


class _Login implements LoginEvent {
  const _Login(this.model);
  

 final  LoginRequestModel model;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCopyWith<_Login> get copyWith => __$LoginCopyWithImpl<_Login>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Login&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'LoginEvent.login(model: $model)';
}


}

/// @nodoc
abstract mixin class _$LoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) _then) = __$LoginCopyWithImpl;
@useResult
$Res call({
 LoginRequestModel model
});




}
/// @nodoc
class __$LoginCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(this._self, this._then);

  final _Login _self;
  final $Res Function(_Login) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(_Login(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as LoginRequestModel,
  ));
}


}

/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginInitial value)?  initial,TResult Function( LoginLoading value)?  loading,TResult Function( LoginSuccess value)?  success,TResult Function( LoginError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that);case LoginLoading() when loading != null:
return loading(_that);case LoginSuccess() when success != null:
return success(_that);case LoginError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginInitial value)  initial,required TResult Function( LoginLoading value)  loading,required TResult Function( LoginSuccess value)  success,required TResult Function( LoginError value)  error,}){
final _that = this;
switch (_that) {
case LoginInitial():
return initial(_that);case LoginLoading():
return loading(_that);case LoginSuccess():
return success(_that);case LoginError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginInitial value)?  initial,TResult? Function( LoginLoading value)?  loading,TResult? Function( LoginSuccess value)?  success,TResult? Function( LoginError value)?  error,}){
final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that);case LoginLoading() when loading != null:
return loading(_that);case LoginSuccess() when success != null:
return success(_that);case LoginError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AuthResponseModel authResponseModel)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial();case LoginLoading() when loading != null:
return loading();case LoginSuccess() when success != null:
return success(_that.authResponseModel);case LoginError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AuthResponseModel authResponseModel)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case LoginInitial():
return initial();case LoginLoading():
return loading();case LoginSuccess():
return success(_that.authResponseModel);case LoginError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AuthResponseModel authResponseModel)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial();case LoginLoading() when loading != null:
return loading();case LoginSuccess() when success != null:
return success(_that.authResponseModel);case LoginError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class LoginInitial implements LoginState {
  const LoginInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class LoginLoading implements LoginState {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class LoginSuccess implements LoginState {
  const LoginSuccess(this.authResponseModel);
  

 final  AuthResponseModel authResponseModel;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<LoginSuccess> get copyWith => _$LoginSuccessCopyWithImpl<LoginSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess&&(identical(other.authResponseModel, authResponseModel) || other.authResponseModel == authResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,authResponseModel);

@override
String toString() {
  return 'LoginState.success(authResponseModel: $authResponseModel)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginSuccessCopyWith(LoginSuccess value, $Res Function(LoginSuccess) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 AuthResponseModel authResponseModel
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<$Res>
    implements $LoginSuccessCopyWith<$Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess _self;
  final $Res Function(LoginSuccess) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authResponseModel = null,}) {
  return _then(LoginSuccess(
null == authResponseModel ? _self.authResponseModel : authResponseModel // ignore: cast_nullable_to_non_nullable
as AuthResponseModel,
  ));
}


}

/// @nodoc


class LoginError implements LoginState {
  const LoginError(this.message);
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginErrorCopyWith<LoginError> get copyWith => _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginErrorCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginErrorCopyWith(LoginError value, $Res Function(LoginError) _then) = _$LoginErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LoginErrorCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(this._self, this._then);

  final LoginError _self;
  final $Res Function(LoginError) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LoginError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
