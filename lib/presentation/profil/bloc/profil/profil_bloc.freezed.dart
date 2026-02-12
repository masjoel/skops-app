// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profil_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfilEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilEvent()';
}


}

/// @nodoc
class $ProfilEventCopyWith<$Res>  {
$ProfilEventCopyWith(ProfilEvent _, $Res Function(ProfilEvent) __);
}


/// Adds pattern-matching-related methods to [ProfilEvent].
extension ProfilEventPatterns on ProfilEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _UpdateProfil value)?  updateProfil,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _UpdateProfil() when updateProfil != null:
return updateProfil(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _UpdateProfil value)  updateProfil,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _UpdateProfil():
return updateProfil(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _UpdateProfil value)?  updateProfil,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _UpdateProfil() when updateProfil != null:
return updateProfil(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetch,TResult Function( Profil profil)?  updateProfil,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _UpdateProfil() when updateProfil != null:
return updateProfil(_that.profil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetch,required TResult Function( Profil profil)  updateProfil,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch();case _UpdateProfil():
return updateProfil(_that.profil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetch,TResult? Function( Profil profil)?  updateProfil,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _UpdateProfil() when updateProfil != null:
return updateProfil(_that.profil);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProfilEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilEvent.started()';
}


}




/// @nodoc


class _Fetch implements ProfilEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilEvent.fetch()';
}


}




/// @nodoc


class _UpdateProfil implements ProfilEvent {
  const _UpdateProfil(this.profil);
  

 final  Profil profil;

/// Create a copy of ProfilEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfilCopyWith<_UpdateProfil> get copyWith => __$UpdateProfilCopyWithImpl<_UpdateProfil>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfil&&(identical(other.profil, profil) || other.profil == profil));
}


@override
int get hashCode => Object.hash(runtimeType,profil);

@override
String toString() {
  return 'ProfilEvent.updateProfil(profil: $profil)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfilCopyWith<$Res> implements $ProfilEventCopyWith<$Res> {
  factory _$UpdateProfilCopyWith(_UpdateProfil value, $Res Function(_UpdateProfil) _then) = __$UpdateProfilCopyWithImpl;
@useResult
$Res call({
 Profil profil
});




}
/// @nodoc
class __$UpdateProfilCopyWithImpl<$Res>
    implements _$UpdateProfilCopyWith<$Res> {
  __$UpdateProfilCopyWithImpl(this._self, this._then);

  final _UpdateProfil _self;
  final $Res Function(_UpdateProfil) _then;

/// Create a copy of ProfilEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profil = null,}) {
  return _then(_UpdateProfil(
null == profil ? _self.profil : profil // ignore: cast_nullable_to_non_nullable
as Profil,
  ));
}


}

/// @nodoc
mixin _$ProfilState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilState()';
}


}

/// @nodoc
class $ProfilStateCopyWith<$Res>  {
$ProfilStateCopyWith(ProfilState _, $Res Function(ProfilState) __);
}


/// Adds pattern-matching-related methods to [ProfilState].
extension ProfilStatePatterns on ProfilState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfilInitial value)?  initial,TResult Function( ProfilLoading value)?  loading,TResult Function( ProfilLoaded value)?  loaded,TResult Function( ProfilSuccess value)?  success,TResult Function( ProfilError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfilInitial() when initial != null:
return initial(_that);case ProfilLoading() when loading != null:
return loading(_that);case ProfilLoaded() when loaded != null:
return loaded(_that);case ProfilSuccess() when success != null:
return success(_that);case ProfilError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfilInitial value)  initial,required TResult Function( ProfilLoading value)  loading,required TResult Function( ProfilLoaded value)  loaded,required TResult Function( ProfilSuccess value)  success,required TResult Function( ProfilError value)  error,}){
final _that = this;
switch (_that) {
case ProfilInitial():
return initial(_that);case ProfilLoading():
return loading(_that);case ProfilLoaded():
return loaded(_that);case ProfilSuccess():
return success(_that);case ProfilError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfilInitial value)?  initial,TResult? Function( ProfilLoading value)?  loading,TResult? Function( ProfilLoaded value)?  loaded,TResult? Function( ProfilSuccess value)?  success,TResult? Function( ProfilError value)?  error,}){
final _that = this;
switch (_that) {
case ProfilInitial() when initial != null:
return initial(_that);case ProfilLoading() when loading != null:
return loading(_that);case ProfilLoaded() when loaded != null:
return loaded(_that);case ProfilSuccess() when success != null:
return success(_that);case ProfilError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Profil profil)?  loaded,TResult Function( Profil profil)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfilInitial() when initial != null:
return initial();case ProfilLoading() when loading != null:
return loading();case ProfilLoaded() when loaded != null:
return loaded(_that.profil);case ProfilSuccess() when success != null:
return success(_that.profil);case ProfilError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Profil profil)  loaded,required TResult Function( Profil profil)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ProfilInitial():
return initial();case ProfilLoading():
return loading();case ProfilLoaded():
return loaded(_that.profil);case ProfilSuccess():
return success(_that.profil);case ProfilError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Profil profil)?  loaded,TResult? Function( Profil profil)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ProfilInitial() when initial != null:
return initial();case ProfilLoading() when loading != null:
return loading();case ProfilLoaded() when loaded != null:
return loaded(_that.profil);case ProfilSuccess() when success != null:
return success(_that.profil);case ProfilError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProfilInitial implements ProfilState {
  const ProfilInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilState.initial()';
}


}




/// @nodoc


class ProfilLoading implements ProfilState {
  const ProfilLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilState.loading()';
}


}




/// @nodoc


class ProfilLoaded implements ProfilState {
  const ProfilLoaded(this.profil);
  

 final  Profil profil;

/// Create a copy of ProfilState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilLoadedCopyWith<ProfilLoaded> get copyWith => _$ProfilLoadedCopyWithImpl<ProfilLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilLoaded&&(identical(other.profil, profil) || other.profil == profil));
}


@override
int get hashCode => Object.hash(runtimeType,profil);

@override
String toString() {
  return 'ProfilState.loaded(profil: $profil)';
}


}

/// @nodoc
abstract mixin class $ProfilLoadedCopyWith<$Res> implements $ProfilStateCopyWith<$Res> {
  factory $ProfilLoadedCopyWith(ProfilLoaded value, $Res Function(ProfilLoaded) _then) = _$ProfilLoadedCopyWithImpl;
@useResult
$Res call({
 Profil profil
});




}
/// @nodoc
class _$ProfilLoadedCopyWithImpl<$Res>
    implements $ProfilLoadedCopyWith<$Res> {
  _$ProfilLoadedCopyWithImpl(this._self, this._then);

  final ProfilLoaded _self;
  final $Res Function(ProfilLoaded) _then;

/// Create a copy of ProfilState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profil = null,}) {
  return _then(ProfilLoaded(
null == profil ? _self.profil : profil // ignore: cast_nullable_to_non_nullable
as Profil,
  ));
}


}

/// @nodoc


class ProfilSuccess implements ProfilState {
  const ProfilSuccess(this.profil);
  

 final  Profil profil;

/// Create a copy of ProfilState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilSuccessCopyWith<ProfilSuccess> get copyWith => _$ProfilSuccessCopyWithImpl<ProfilSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilSuccess&&(identical(other.profil, profil) || other.profil == profil));
}


@override
int get hashCode => Object.hash(runtimeType,profil);

@override
String toString() {
  return 'ProfilState.success(profil: $profil)';
}


}

/// @nodoc
abstract mixin class $ProfilSuccessCopyWith<$Res> implements $ProfilStateCopyWith<$Res> {
  factory $ProfilSuccessCopyWith(ProfilSuccess value, $Res Function(ProfilSuccess) _then) = _$ProfilSuccessCopyWithImpl;
@useResult
$Res call({
 Profil profil
});




}
/// @nodoc
class _$ProfilSuccessCopyWithImpl<$Res>
    implements $ProfilSuccessCopyWith<$Res> {
  _$ProfilSuccessCopyWithImpl(this._self, this._then);

  final ProfilSuccess _self;
  final $Res Function(ProfilSuccess) _then;

/// Create a copy of ProfilState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profil = null,}) {
  return _then(ProfilSuccess(
null == profil ? _self.profil : profil // ignore: cast_nullable_to_non_nullable
as Profil,
  ));
}


}

/// @nodoc


class ProfilError implements ProfilState {
  const ProfilError(this.message);
  

 final  String message;

/// Create a copy of ProfilState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilErrorCopyWith<ProfilError> get copyWith => _$ProfilErrorCopyWithImpl<ProfilError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfilState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfilErrorCopyWith<$Res> implements $ProfilStateCopyWith<$Res> {
  factory $ProfilErrorCopyWith(ProfilError value, $Res Function(ProfilError) _then) = _$ProfilErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProfilErrorCopyWithImpl<$Res>
    implements $ProfilErrorCopyWith<$Res> {
  _$ProfilErrorCopyWithImpl(this._self, this._then);

  final ProfilError _self;
  final $Res Function(ProfilError) _then;

/// Create a copy of ProfilState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProfilError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
