// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top10_skor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Top10SkorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10SkorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10SkorEvent()';
}


}

/// @nodoc
class $Top10SkorEventCopyWith<$Res>  {
$Top10SkorEventCopyWith(Top10SkorEvent _, $Res Function(Top10SkorEvent) __);
}


/// Adds pattern-matching-related methods to [Top10SkorEvent].
extension Top10SkorEventPatterns on Top10SkorEvent {
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


class _Started implements Top10SkorEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10SkorEvent.started()';
}


}




/// @nodoc


class _Fetch implements Top10SkorEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10SkorEvent.fetch()';
}


}




/// @nodoc


class _SearchTop10 implements Top10SkorEvent {
  const _SearchTop10(this.query);
  

 final  String query;

/// Create a copy of Top10SkorEvent
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
  return 'Top10SkorEvent.searchTop10(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchTop10CopyWith<$Res> implements $Top10SkorEventCopyWith<$Res> {
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

/// Create a copy of Top10SkorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchTop10(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Top10SkorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10SkorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10SkorState()';
}


}

/// @nodoc
class $Top10SkorStateCopyWith<$Res>  {
$Top10SkorStateCopyWith(Top10SkorState _, $Res Function(Top10SkorState) __);
}


/// Adds pattern-matching-related methods to [Top10SkorState].
extension Top10SkorStatePatterns on Top10SkorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Top10SkorLoading value)?  loading,TResult Function( Top10SkorSuccess value)?  success,TResult Function( Top10SkorError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Top10SkorLoading() when loading != null:
return loading(_that);case Top10SkorSuccess() when success != null:
return success(_that);case Top10SkorError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Top10SkorLoading value)  loading,required TResult Function( Top10SkorSuccess value)  success,required TResult Function( Top10SkorError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Top10SkorLoading():
return loading(_that);case Top10SkorSuccess():
return success(_that);case Top10SkorError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Top10SkorLoading value)?  loading,TResult? Function( Top10SkorSuccess value)?  success,TResult? Function( Top10SkorError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Top10SkorLoading() when loading != null:
return loading(_that);case Top10SkorSuccess() when success != null:
return success(_that);case Top10SkorError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Top10Skor> top10skor)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Top10SkorLoading() when loading != null:
return loading();case Top10SkorSuccess() when success != null:
return success(_that.top10skor);case Top10SkorError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Top10Skor> top10skor)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Top10SkorLoading():
return loading();case Top10SkorSuccess():
return success(_that.top10skor);case Top10SkorError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Top10Skor> top10skor)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Top10SkorLoading() when loading != null:
return loading();case Top10SkorSuccess() when success != null:
return success(_that.top10skor);case Top10SkorError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements Top10SkorState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10SkorState.initial()';
}


}




/// @nodoc


class Top10SkorLoading implements Top10SkorState {
  const Top10SkorLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10SkorLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Top10SkorState.loading()';
}


}




/// @nodoc


class Top10SkorSuccess implements Top10SkorState {
  const Top10SkorSuccess(final  List<Top10Skor> top10skor): _top10skor = top10skor;
  

 final  List<Top10Skor> _top10skor;
 List<Top10Skor> get top10skor {
  if (_top10skor is EqualUnmodifiableListView) return _top10skor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_top10skor);
}


/// Create a copy of Top10SkorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Top10SkorSuccessCopyWith<Top10SkorSuccess> get copyWith => _$Top10SkorSuccessCopyWithImpl<Top10SkorSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10SkorSuccess&&const DeepCollectionEquality().equals(other._top10skor, _top10skor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_top10skor));

@override
String toString() {
  return 'Top10SkorState.success(top10skor: $top10skor)';
}


}

/// @nodoc
abstract mixin class $Top10SkorSuccessCopyWith<$Res> implements $Top10SkorStateCopyWith<$Res> {
  factory $Top10SkorSuccessCopyWith(Top10SkorSuccess value, $Res Function(Top10SkorSuccess) _then) = _$Top10SkorSuccessCopyWithImpl;
@useResult
$Res call({
 List<Top10Skor> top10skor
});




}
/// @nodoc
class _$Top10SkorSuccessCopyWithImpl<$Res>
    implements $Top10SkorSuccessCopyWith<$Res> {
  _$Top10SkorSuccessCopyWithImpl(this._self, this._then);

  final Top10SkorSuccess _self;
  final $Res Function(Top10SkorSuccess) _then;

/// Create a copy of Top10SkorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? top10skor = null,}) {
  return _then(Top10SkorSuccess(
null == top10skor ? _self._top10skor : top10skor // ignore: cast_nullable_to_non_nullable
as List<Top10Skor>,
  ));
}


}

/// @nodoc


class Top10SkorError implements Top10SkorState {
  const Top10SkorError(this.message);
  

 final  String message;

/// Create a copy of Top10SkorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Top10SkorErrorCopyWith<Top10SkorError> get copyWith => _$Top10SkorErrorCopyWithImpl<Top10SkorError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Top10SkorError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Top10SkorState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $Top10SkorErrorCopyWith<$Res> implements $Top10SkorStateCopyWith<$Res> {
  factory $Top10SkorErrorCopyWith(Top10SkorError value, $Res Function(Top10SkorError) _then) = _$Top10SkorErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$Top10SkorErrorCopyWithImpl<$Res>
    implements $Top10SkorErrorCopyWith<$Res> {
  _$Top10SkorErrorCopyWithImpl(this._self, this._then);

  final Top10SkorError _self;
  final $Res Function(Top10SkorError) _then;

/// Create a copy of Top10SkorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Top10SkorError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
