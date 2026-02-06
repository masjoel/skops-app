// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top10_poin_siswa_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Top10PoinSiswaEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10PoinSiswaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10PoinSiswaEvent()';
}


}

/// @nodoc
class $Top10PoinSiswaEventCopyWith<$Res>  {
$Top10PoinSiswaEventCopyWith(Top10PoinSiswaEvent _, $Res Function(Top10PoinSiswaEvent) __);
}


/// Adds pattern-matching-related methods to [Top10PoinSiswaEvent].
extension Top10PoinSiswaEventPatterns on Top10PoinSiswaEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _SearchTop10 value)?  searchTop10,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchTop10() when searchTop10 != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _SearchTop10 value)  searchTop10,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _SearchTop10():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _SearchTop10 value)?  searchTop10,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchTop10() when searchTop10 != null:
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
return fetch();case _SearchTop10() when searchTop10 != null:
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
return fetch();case _SearchTop10():
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
return fetch();case _SearchTop10() when searchTop10 != null:
return searchTop10(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements Top10PoinSiswaEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10PoinSiswaEvent.started()';
}


}




/// @nodoc


class _Fetch implements Top10PoinSiswaEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10PoinSiswaEvent.fetch()';
}


}




/// @nodoc


class _SearchTop10 implements Top10PoinSiswaEvent {
  const _SearchTop10(this.query);
  

 final  String query;

/// Create a copy of Top10PoinSiswaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchTop10CopyWith<_SearchTop10> get copyWith => __$SearchTop10CopyWithImpl<_SearchTop10>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchTop10&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'Top10PoinSiswaEvent.searchTop10(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchTop10CopyWith<$Res> implements $Top10PoinSiswaEventCopyWith<$Res> {
  factory _$SearchTop10CopyWith(_SearchTop10 value, $Res Function(_SearchTop10) _then) = __$SearchTop10CopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchTop10CopyWithImpl<$Res>
    implements _$SearchTop10CopyWith<$Res> {
  __$SearchTop10CopyWithImpl(this._self, this._then);

  final _SearchTop10 _self;
  final $Res Function(_SearchTop10) _then;

/// Create a copy of Top10PoinSiswaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchTop10(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Top10PoinSiswaState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10PoinSiswaState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10PoinSiswaState()';
}


}

/// @nodoc
class $Top10PoinSiswaStateCopyWith<$Res>  {
$Top10PoinSiswaStateCopyWith(Top10PoinSiswaState _, $Res Function(Top10PoinSiswaState) __);
}


/// Adds pattern-matching-related methods to [Top10PoinSiswaState].
extension Top10PoinSiswaStatePatterns on Top10PoinSiswaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Top10PoinLoading value)?  loading,TResult Function( Top10PoinSuccess value)?  success,TResult Function( Top10PoinError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Top10PoinLoading() when loading != null:
return loading(_that);case Top10PoinSuccess() when success != null:
return success(_that);case Top10PoinError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Top10PoinLoading value)  loading,required TResult Function( Top10PoinSuccess value)  success,required TResult Function( Top10PoinError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Top10PoinLoading():
return loading(_that);case Top10PoinSuccess():
return success(_that);case Top10PoinError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Top10PoinLoading value)?  loading,TResult? Function( Top10PoinSuccess value)?  success,TResult? Function( Top10PoinError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Top10PoinLoading() when loading != null:
return loading(_that);case Top10PoinSuccess() when success != null:
return success(_that);case Top10PoinError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Top10Siswa> top10)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Top10PoinLoading() when loading != null:
return loading();case Top10PoinSuccess() when success != null:
return success(_that.top10);case Top10PoinError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Top10Siswa> top10)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Top10PoinLoading():
return loading();case Top10PoinSuccess():
return success(_that.top10);case Top10PoinError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Top10Siswa> top10)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Top10PoinLoading() when loading != null:
return loading();case Top10PoinSuccess() when success != null:
return success(_that.top10);case Top10PoinError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements Top10PoinSiswaState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10PoinSiswaState.initial()';
}


}




/// @nodoc


class Top10PoinLoading implements Top10PoinSiswaState {
  const Top10PoinLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10PoinLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10PoinSiswaState.loading()';
}


}




/// @nodoc


class Top10PoinSuccess implements Top10PoinSiswaState {
  const Top10PoinSuccess(final  List<Top10Siswa> top10): _top10 = top10;
  

 final  List<Top10Siswa> _top10;
 List<Top10Siswa> get top10 {
  if (_top10 is EqualUnmodifiableListView) return _top10;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_top10);
}


/// Create a copy of Top10PoinSiswaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Top10PoinSuccessCopyWith<Top10PoinSuccess> get copyWith => _$Top10PoinSuccessCopyWithImpl<Top10PoinSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10PoinSuccess&&const DeepCollectionEquality().equals(other._top10, _top10));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_top10));

@override
String toString() {
  return 'Top10PoinSiswaState.success(top10: $top10)';
}


}

/// @nodoc
abstract mixin class $Top10PoinSuccessCopyWith<$Res> implements $Top10PoinSiswaStateCopyWith<$Res> {
  factory $Top10PoinSuccessCopyWith(Top10PoinSuccess value, $Res Function(Top10PoinSuccess) _then) = _$Top10PoinSuccessCopyWithImpl;
@useResult
$Res call({
 List<Top10Siswa> top10
});




}
/// @nodoc
class _$Top10PoinSuccessCopyWithImpl<$Res>
    implements $Top10PoinSuccessCopyWith<$Res> {
  _$Top10PoinSuccessCopyWithImpl(this._self, this._then);

  final Top10PoinSuccess _self;
  final $Res Function(Top10PoinSuccess) _then;

/// Create a copy of Top10PoinSiswaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? top10 = null,}) {
  return _then(Top10PoinSuccess(
null == top10 ? _self._top10 : top10 // ignore: cast_nullable_to_non_nullable
as List<Top10Siswa>,
  ));
}


}

/// @nodoc


class Top10PoinError implements Top10PoinSiswaState {
  const Top10PoinError(this.message);
  

 final  String message;

/// Create a copy of Top10PoinSiswaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Top10PoinErrorCopyWith<Top10PoinError> get copyWith => _$Top10PoinErrorCopyWithImpl<Top10PoinError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10PoinError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Top10PoinSiswaState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Top10PoinErrorCopyWith<$Res> implements $Top10PoinSiswaStateCopyWith<$Res> {
  factory $Top10PoinErrorCopyWith(Top10PoinError value, $Res Function(Top10PoinError) _then) = _$Top10PoinErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Top10PoinErrorCopyWithImpl<$Res>
    implements $Top10PoinErrorCopyWith<$Res> {
  _$Top10PoinErrorCopyWithImpl(this._self, this._then);

  final Top10PoinError _self;
  final $Res Function(Top10PoinError) _then;

/// Create a copy of Top10PoinSiswaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Top10PoinError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
