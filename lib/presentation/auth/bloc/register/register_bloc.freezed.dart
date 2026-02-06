// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Register value)?  register,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Register() when register != null:
return register(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Register value)  register,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Register():
return register(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Register value)?  register,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Register() when register != null:
return register(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( RegisterRequestModel model)?  register,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Register() when register != null:
return register(_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( RegisterRequestModel model)  register,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Register():
return register(_that.model);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( RegisterRequestModel model)?  register,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Register() when register != null:
return register(_that.model);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RegisterEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.started()';
}


}




/// @nodoc


class _Register implements RegisterEvent {
  const _Register(this.model);
  

 final  RegisterRequestModel model;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterCopyWith<_Register> get copyWith => __$RegisterCopyWithImpl<_Register>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Register&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'RegisterEvent.register(model: $model)';
}


}

/// @nodoc
abstract mixin class _$RegisterCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) _then) = __$RegisterCopyWithImpl;
@useResult
$Res call({
 RegisterRequestModel model
});




}
/// @nodoc
class __$RegisterCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(this._self, this._then);

  final _Register _self;
  final $Res Function(_Register) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(_Register(
null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as RegisterRequestModel,
  ));
}


}

/// @nodoc
mixin _$RegisterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState()';
}


}

/// @nodoc
class $RegisterStateCopyWith<$Res>  {
$RegisterStateCopyWith(RegisterState _, $Res Function(RegisterState) __);
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegisterStateInitial value)?  initial,TResult Function( RegisterStateLoading value)?  loading,TResult Function( RegisterStateLoaded value)?  loaded,TResult Function( RegisterStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegisterStateInitial() when initial != null:
return initial(_that);case RegisterStateLoading() when loading != null:
return loading(_that);case RegisterStateLoaded() when loaded != null:
return loaded(_that);case RegisterStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegisterStateInitial value)  initial,required TResult Function( RegisterStateLoading value)  loading,required TResult Function( RegisterStateLoaded value)  loaded,required TResult Function( RegisterStateError value)  error,}){
final _that = this;
switch (_that) {
case RegisterStateInitial():
return initial(_that);case RegisterStateLoading():
return loading(_that);case RegisterStateLoaded():
return loaded(_that);case RegisterStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegisterStateInitial value)?  initial,TResult? Function( RegisterStateLoading value)?  loading,TResult? Function( RegisterStateLoaded value)?  loaded,TResult? Function( RegisterStateError value)?  error,}){
final _that = this;
switch (_that) {
case RegisterStateInitial() when initial != null:
return initial(_that);case RegisterStateLoading() when loading != null:
return loading(_that);case RegisterStateLoaded() when loaded != null:
return loaded(_that);case RegisterStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AuthResponseModel data)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegisterStateInitial() when initial != null:
return initial();case RegisterStateLoading() when loading != null:
return loading();case RegisterStateLoaded() when loaded != null:
return loaded(_that.data);case RegisterStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AuthResponseModel data)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case RegisterStateInitial():
return initial();case RegisterStateLoading():
return loading();case RegisterStateLoaded():
return loaded(_that.data);case RegisterStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AuthResponseModel data)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case RegisterStateInitial() when initial != null:
return initial();case RegisterStateLoading() when loading != null:
return loading();case RegisterStateLoaded() when loaded != null:
return loaded(_that.data);case RegisterStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class RegisterStateInitial implements RegisterState {
  const RegisterStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.initial()';
}


}




/// @nodoc


class RegisterStateLoading implements RegisterState {
  const RegisterStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterState.loading()';
}


}




/// @nodoc


class RegisterStateLoaded implements RegisterState {
  const RegisterStateLoaded(this.data);
  

 final  AuthResponseModel data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateLoadedCopyWith<RegisterStateLoaded> get copyWith => _$RegisterStateLoadedCopyWithImpl<RegisterStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterStateLoaded&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'RegisterState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $RegisterStateLoadedCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterStateLoadedCopyWith(RegisterStateLoaded value, $Res Function(RegisterStateLoaded) _then) = _$RegisterStateLoadedCopyWithImpl;
@useResult
$Res call({
 AuthResponseModel data
});




}
/// @nodoc
class _$RegisterStateLoadedCopyWithImpl<$Res>
    implements $RegisterStateLoadedCopyWith<$Res> {
  _$RegisterStateLoadedCopyWithImpl(this._self, this._then);

  final RegisterStateLoaded _self;
  final $Res Function(RegisterStateLoaded) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(RegisterStateLoaded(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthResponseModel,
  ));
}


}

/// @nodoc


class RegisterStateError implements RegisterState {
  const RegisterStateError(this.message);
  

 final  String message;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateErrorCopyWith<RegisterStateError> get copyWith => _$RegisterStateErrorCopyWithImpl<RegisterStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RegisterState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $RegisterStateErrorCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterStateErrorCopyWith(RegisterStateError value, $Res Function(RegisterStateError) _then) = _$RegisterStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RegisterStateErrorCopyWithImpl<$Res>
    implements $RegisterStateErrorCopyWith<$Res> {
  _$RegisterStateErrorCopyWithImpl(this._self, this._then);

  final RegisterStateError _self;
  final $Res Function(RegisterStateError) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(RegisterStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
