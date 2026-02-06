// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketingEvent()';
}


}

/// @nodoc
class $MarketingEventCopyWith<$Res>  {
$MarketingEventCopyWith(MarketingEvent _, $Res Function(MarketingEvent) __);
}


/// Adds pattern-matching-related methods to [MarketingEvent].
extension MarketingEventPatterns on MarketingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _FetchMarketing value)?  fetchmarketing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FetchMarketing() when fetchmarketing != null:
return fetchmarketing(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _FetchMarketing value)  fetchmarketing,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _FetchMarketing():
return fetchmarketing(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _FetchMarketing value)?  fetchmarketing,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FetchMarketing() when fetchmarketing != null:
return fetchmarketing(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetchmarketing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FetchMarketing() when fetchmarketing != null:
return fetchmarketing();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetchmarketing,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _FetchMarketing():
return fetchmarketing();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetchmarketing,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FetchMarketing() when fetchmarketing != null:
return fetchmarketing();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MarketingEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketingEvent.started()';
}


}




/// @nodoc


class _FetchMarketing implements MarketingEvent {
  const _FetchMarketing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMarketing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketingEvent.fetchmarketing()';
}


}




/// @nodoc
mixin _$MarketingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketingState()';
}


}

/// @nodoc
class $MarketingStateCopyWith<$Res>  {
$MarketingStateCopyWith(MarketingState _, $Res Function(MarketingState) __);
}


/// Adds pattern-matching-related methods to [MarketingState].
extension MarketingStatePatterns on MarketingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MarketingStateInitial value)?  initial,TResult Function( MarketingStateLoading value)?  loading,TResult Function( MarketingStateSuccess value)?  success,TResult Function( MarketingStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MarketingStateInitial() when initial != null:
return initial(_that);case MarketingStateLoading() when loading != null:
return loading(_that);case MarketingStateSuccess() when success != null:
return success(_that);case MarketingStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MarketingStateInitial value)  initial,required TResult Function( MarketingStateLoading value)  loading,required TResult Function( MarketingStateSuccess value)  success,required TResult Function( MarketingStateError value)  error,}){
final _that = this;
switch (_that) {
case MarketingStateInitial():
return initial(_that);case MarketingStateLoading():
return loading(_that);case MarketingStateSuccess():
return success(_that);case MarketingStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MarketingStateInitial value)?  initial,TResult? Function( MarketingStateLoading value)?  loading,TResult? Function( MarketingStateSuccess value)?  success,TResult? Function( MarketingStateError value)?  error,}){
final _that = this;
switch (_that) {
case MarketingStateInitial() when initial != null:
return initial(_that);case MarketingStateLoading() when loading != null:
return loading(_that);case MarketingStateSuccess() when success != null:
return success(_that);case MarketingStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( MarketingResponseModel marketingResponse)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MarketingStateInitial() when initial != null:
return initial();case MarketingStateLoading() when loading != null:
return loading();case MarketingStateSuccess() when success != null:
return success(_that.marketingResponse);case MarketingStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( MarketingResponseModel marketingResponse)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case MarketingStateInitial():
return initial();case MarketingStateLoading():
return loading();case MarketingStateSuccess():
return success(_that.marketingResponse);case MarketingStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( MarketingResponseModel marketingResponse)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case MarketingStateInitial() when initial != null:
return initial();case MarketingStateLoading() when loading != null:
return loading();case MarketingStateSuccess() when success != null:
return success(_that.marketingResponse);case MarketingStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MarketingStateInitial implements MarketingState {
  const MarketingStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketingStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketingState.initial()';
}


}




/// @nodoc


class MarketingStateLoading implements MarketingState {
  const MarketingStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketingStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarketingState.loading()';
}


}




/// @nodoc


class MarketingStateSuccess implements MarketingState {
  const MarketingStateSuccess(this.marketingResponse);
  

 final  MarketingResponseModel marketingResponse;

/// Create a copy of MarketingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketingStateSuccessCopyWith<MarketingStateSuccess> get copyWith => _$MarketingStateSuccessCopyWithImpl<MarketingStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketingStateSuccess&&(identical(other.marketingResponse, marketingResponse) || other.marketingResponse == marketingResponse));
}


@override
int get hashCode => Object.hash(runtimeType,marketingResponse);

@override
String toString() {
  return 'MarketingState.success(marketingResponse: $marketingResponse)';
}


}

/// @nodoc
abstract mixin class $MarketingStateSuccessCopyWith<$Res> implements $MarketingStateCopyWith<$Res> {
  factory $MarketingStateSuccessCopyWith(MarketingStateSuccess value, $Res Function(MarketingStateSuccess) _then) = _$MarketingStateSuccessCopyWithImpl;
@useResult
$Res call({
 MarketingResponseModel marketingResponse
});




}
/// @nodoc
class _$MarketingStateSuccessCopyWithImpl<$Res>
    implements $MarketingStateSuccessCopyWith<$Res> {
  _$MarketingStateSuccessCopyWithImpl(this._self, this._then);

  final MarketingStateSuccess _self;
  final $Res Function(MarketingStateSuccess) _then;

/// Create a copy of MarketingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? marketingResponse = null,}) {
  return _then(MarketingStateSuccess(
null == marketingResponse ? _self.marketingResponse : marketingResponse // ignore: cast_nullable_to_non_nullable
as MarketingResponseModel,
  ));
}


}

/// @nodoc


class MarketingStateError implements MarketingState {
  const MarketingStateError(this.message);
  

 final  String message;

/// Create a copy of MarketingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketingStateErrorCopyWith<MarketingStateError> get copyWith => _$MarketingStateErrorCopyWithImpl<MarketingStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketingStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MarketingState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MarketingStateErrorCopyWith<$Res> implements $MarketingStateCopyWith<$Res> {
  factory $MarketingStateErrorCopyWith(MarketingStateError value, $Res Function(MarketingStateError) _then) = _$MarketingStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MarketingStateErrorCopyWithImpl<$Res>
    implements $MarketingStateErrorCopyWith<$Res> {
  _$MarketingStateErrorCopyWithImpl(this._self, this._then);

  final MarketingStateError _self;
  final $Res Function(MarketingStateError) _then;

/// Create a copy of MarketingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MarketingStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
