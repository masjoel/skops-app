// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jenis_skor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JenisSkorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JenisSkorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JenisSkorEvent()';
}


}

/// @nodoc
class $JenisSkorEventCopyWith<$Res>  {
$JenisSkorEventCopyWith(JenisSkorEvent _, $Res Function(JenisSkorEvent) __);
}


/// Adds pattern-matching-related methods to [JenisSkorEvent].
extension JenisSkorEventPatterns on JenisSkorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _SearchSkor value)?  searchTop10,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchSkor() when searchTop10 != null:
return searchTop10(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _SearchSkor value)  searchTop10,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _SearchSkor():
return searchTop10(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _SearchSkor value)?  searchTop10,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchSkor() when searchTop10 != null:
return searchTop10(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetch,TResult Function( String query)?  searchTop10,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchSkor() when searchTop10 != null:
return searchTop10(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetch,required TResult Function( String query)  searchTop10,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch();case _SearchSkor():
return searchTop10(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetch,TResult? Function( String query)?  searchTop10,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchSkor() when searchTop10 != null:
return searchTop10(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements JenisSkorEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JenisSkorEvent.started()';
}


}




/// @nodoc


class _Fetch implements JenisSkorEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JenisSkorEvent.fetch()';
}


}




/// @nodoc


class _SearchSkor implements JenisSkorEvent {
  const _SearchSkor(this.query);
  

 final  String query;

/// Create a copy of JenisSkorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSkorCopyWith<_SearchSkor> get copyWith => __$SearchSkorCopyWithImpl<_SearchSkor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSkor&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'JenisSkorEvent.searchTop10(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchSkorCopyWith<$Res> implements $JenisSkorEventCopyWith<$Res> {
  factory _$SearchSkorCopyWith(_SearchSkor value, $Res Function(_SearchSkor) _then) = __$SearchSkorCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchSkorCopyWithImpl<$Res>
    implements _$SearchSkorCopyWith<$Res> {
  __$SearchSkorCopyWithImpl(this._self, this._then);

  final _SearchSkor _self;
  final $Res Function(_SearchSkor) _then;

/// Create a copy of JenisSkorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchSkor(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$JenisSkorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JenisSkorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JenisSkorState()';
}


}

/// @nodoc
class $JenisSkorStateCopyWith<$Res>  {
$JenisSkorStateCopyWith(JenisSkorState _, $Res Function(JenisSkorState) __);
}


/// Adds pattern-matching-related methods to [JenisSkorState].
extension JenisSkorStatePatterns on JenisSkorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( JenisSkorLoading value)?  loading,TResult Function( JenisSkorSuccess value)?  success,TResult Function( JenisSkorError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case JenisSkorLoading() when loading != null:
return loading(_that);case JenisSkorSuccess() when success != null:
return success(_that);case JenisSkorError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( JenisSkorLoading value)  loading,required TResult Function( JenisSkorSuccess value)  success,required TResult Function( JenisSkorError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case JenisSkorLoading():
return loading(_that);case JenisSkorSuccess():
return success(_that);case JenisSkorError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( JenisSkorLoading value)?  loading,TResult? Function( JenisSkorSuccess value)?  success,TResult? Function( JenisSkorError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case JenisSkorLoading() when loading != null:
return loading(_that);case JenisSkorSuccess() when success != null:
return success(_that);case JenisSkorError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<JenisSkor> jenisSkor)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case JenisSkorLoading() when loading != null:
return loading();case JenisSkorSuccess() when success != null:
return success(_that.jenisSkor);case JenisSkorError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<JenisSkor> jenisSkor)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case JenisSkorLoading():
return loading();case JenisSkorSuccess():
return success(_that.jenisSkor);case JenisSkorError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<JenisSkor> jenisSkor)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case JenisSkorLoading() when loading != null:
return loading();case JenisSkorSuccess() when success != null:
return success(_that.jenisSkor);case JenisSkorError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements JenisSkorState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JenisSkorState.initial()';
}


}




/// @nodoc


class JenisSkorLoading implements JenisSkorState {
  const JenisSkorLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JenisSkorLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JenisSkorState.loading()';
}


}




/// @nodoc


class JenisSkorSuccess implements JenisSkorState {
  const JenisSkorSuccess(final  List<JenisSkor> jenisSkor): _jenisSkor = jenisSkor;
  

 final  List<JenisSkor> _jenisSkor;
 List<JenisSkor> get jenisSkor {
  if (_jenisSkor is EqualUnmodifiableListView) return _jenisSkor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jenisSkor);
}


/// Create a copy of JenisSkorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JenisSkorSuccessCopyWith<JenisSkorSuccess> get copyWith => _$JenisSkorSuccessCopyWithImpl<JenisSkorSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JenisSkorSuccess&&const DeepCollectionEquality().equals(other._jenisSkor, _jenisSkor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_jenisSkor));

@override
String toString() {
  return 'JenisSkorState.success(jenisSkor: $jenisSkor)';
}


}

/// @nodoc
abstract mixin class $JenisSkorSuccessCopyWith<$Res> implements $JenisSkorStateCopyWith<$Res> {
  factory $JenisSkorSuccessCopyWith(JenisSkorSuccess value, $Res Function(JenisSkorSuccess) _then) = _$JenisSkorSuccessCopyWithImpl;
@useResult
$Res call({
 List<JenisSkor> jenisSkor
});




}
/// @nodoc
class _$JenisSkorSuccessCopyWithImpl<$Res>
    implements $JenisSkorSuccessCopyWith<$Res> {
  _$JenisSkorSuccessCopyWithImpl(this._self, this._then);

  final JenisSkorSuccess _self;
  final $Res Function(JenisSkorSuccess) _then;

/// Create a copy of JenisSkorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jenisSkor = null,}) {
  return _then(JenisSkorSuccess(
null == jenisSkor ? _self._jenisSkor : jenisSkor // ignore: cast_nullable_to_non_nullable
as List<JenisSkor>,
  ));
}


}

/// @nodoc


class JenisSkorError implements JenisSkorState {
  const JenisSkorError(this.message);
  

 final  String message;

/// Create a copy of JenisSkorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JenisSkorErrorCopyWith<JenisSkorError> get copyWith => _$JenisSkorErrorCopyWithImpl<JenisSkorError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JenisSkorError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'JenisSkorState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $JenisSkorErrorCopyWith<$Res> implements $JenisSkorStateCopyWith<$Res> {
  factory $JenisSkorErrorCopyWith(JenisSkorError value, $Res Function(JenisSkorError) _then) = _$JenisSkorErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$JenisSkorErrorCopyWithImpl<$Res>
    implements $JenisSkorErrorCopyWith<$Res> {
  _$JenisSkorErrorCopyWithImpl(this._self, this._then);

  final JenisSkorError _self;
  final $Res Function(JenisSkorError) _then;

/// Create a copy of JenisSkorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(JenisSkorError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
