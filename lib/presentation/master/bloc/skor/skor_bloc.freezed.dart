// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SkorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SkorEvent()';
}


}

/// @nodoc
class $SkorEventCopyWith<$Res>  {
$SkorEventCopyWith(SkorEvent _, $Res Function(SkorEvent) __);
}


/// Adds pattern-matching-related methods to [SkorEvent].
extension SkorEventPatterns on SkorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _SearchSkor value)?  searchSkor,TResult Function( _AddSkor value)?  addSkor,TResult Function( _DeleteSkor value)?  deleteSkor,TResult Function( _UpdateSkor value)?  updateSkor,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchSkor() when searchSkor != null:
return searchSkor(_that);case _AddSkor() when addSkor != null:
return addSkor(_that);case _DeleteSkor() when deleteSkor != null:
return deleteSkor(_that);case _UpdateSkor() when updateSkor != null:
return updateSkor(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _SearchSkor value)  searchSkor,required TResult Function( _AddSkor value)  addSkor,required TResult Function( _DeleteSkor value)  deleteSkor,required TResult Function( _UpdateSkor value)  updateSkor,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _SearchSkor():
return searchSkor(_that);case _AddSkor():
return addSkor(_that);case _DeleteSkor():
return deleteSkor(_that);case _UpdateSkor():
return updateSkor(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _SearchSkor value)?  searchSkor,TResult? Function( _AddSkor value)?  addSkor,TResult? Function( _DeleteSkor value)?  deleteSkor,TResult? Function( _UpdateSkor value)?  updateSkor,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchSkor() when searchSkor != null:
return searchSkor(_that);case _AddSkor() when addSkor != null:
return addSkor(_that);case _DeleteSkor() when deleteSkor != null:
return deleteSkor(_that);case _UpdateSkor() when updateSkor != null:
return updateSkor(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetch,TResult Function( String query)?  searchSkor,TResult Function( SkorRequestModel skor)?  addSkor,TResult Function( int id)?  deleteSkor,TResult Function( Skor skor)?  updateSkor,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchSkor() when searchSkor != null:
return searchSkor(_that.query);case _AddSkor() when addSkor != null:
return addSkor(_that.skor);case _DeleteSkor() when deleteSkor != null:
return deleteSkor(_that.id);case _UpdateSkor() when updateSkor != null:
return updateSkor(_that.skor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetch,required TResult Function( String query)  searchSkor,required TResult Function( SkorRequestModel skor)  addSkor,required TResult Function( int id)  deleteSkor,required TResult Function( Skor skor)  updateSkor,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch();case _SearchSkor():
return searchSkor(_that.query);case _AddSkor():
return addSkor(_that.skor);case _DeleteSkor():
return deleteSkor(_that.id);case _UpdateSkor():
return updateSkor(_that.skor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetch,TResult? Function( String query)?  searchSkor,TResult? Function( SkorRequestModel skor)?  addSkor,TResult? Function( int id)?  deleteSkor,TResult? Function( Skor skor)?  updateSkor,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchSkor() when searchSkor != null:
return searchSkor(_that.query);case _AddSkor() when addSkor != null:
return addSkor(_that.skor);case _DeleteSkor() when deleteSkor != null:
return deleteSkor(_that.id);case _UpdateSkor() when updateSkor != null:
return updateSkor(_that.skor);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SkorEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SkorEvent.started()';
}


}




/// @nodoc


class _Fetch implements SkorEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SkorEvent.fetch()';
}


}




/// @nodoc


class _SearchSkor implements SkorEvent {
  const _SearchSkor(this.query);
  

 final  String query;

/// Create a copy of SkorEvent
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
  return 'SkorEvent.searchSkor(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchSkorCopyWith<$Res> implements $SkorEventCopyWith<$Res> {
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

/// Create a copy of SkorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchSkor(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddSkor implements SkorEvent {
  const _AddSkor(this.skor);
  

 final  SkorRequestModel skor;

/// Create a copy of SkorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddSkorCopyWith<_AddSkor> get copyWith => __$AddSkorCopyWithImpl<_AddSkor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddSkor&&(identical(other.skor, skor) || other.skor == skor));
}


@override
int get hashCode => Object.hash(runtimeType,skor);

@override
String toString() {
  return 'SkorEvent.addSkor(skor: $skor)';
}


}

/// @nodoc
abstract mixin class _$AddSkorCopyWith<$Res> implements $SkorEventCopyWith<$Res> {
  factory _$AddSkorCopyWith(_AddSkor value, $Res Function(_AddSkor) _then) = __$AddSkorCopyWithImpl;
@useResult
$Res call({
 SkorRequestModel skor
});




}
/// @nodoc
class __$AddSkorCopyWithImpl<$Res>
    implements _$AddSkorCopyWith<$Res> {
  __$AddSkorCopyWithImpl(this._self, this._then);

  final _AddSkor _self;
  final $Res Function(_AddSkor) _then;

/// Create a copy of SkorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? skor = null,}) {
  return _then(_AddSkor(
null == skor ? _self.skor : skor // ignore: cast_nullable_to_non_nullable
as SkorRequestModel,
  ));
}


}

/// @nodoc


class _DeleteSkor implements SkorEvent {
  const _DeleteSkor(this.id);
  

 final  int id;

/// Create a copy of SkorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSkorCopyWith<_DeleteSkor> get copyWith => __$DeleteSkorCopyWithImpl<_DeleteSkor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSkor&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SkorEvent.deleteSkor(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteSkorCopyWith<$Res> implements $SkorEventCopyWith<$Res> {
  factory _$DeleteSkorCopyWith(_DeleteSkor value, $Res Function(_DeleteSkor) _then) = __$DeleteSkorCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteSkorCopyWithImpl<$Res>
    implements _$DeleteSkorCopyWith<$Res> {
  __$DeleteSkorCopyWithImpl(this._self, this._then);

  final _DeleteSkor _self;
  final $Res Function(_DeleteSkor) _then;

/// Create a copy of SkorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteSkor(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateSkor implements SkorEvent {
  const _UpdateSkor(this.skor);
  

 final  Skor skor;

/// Create a copy of SkorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSkorCopyWith<_UpdateSkor> get copyWith => __$UpdateSkorCopyWithImpl<_UpdateSkor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSkor&&(identical(other.skor, skor) || other.skor == skor));
}


@override
int get hashCode => Object.hash(runtimeType,skor);

@override
String toString() {
  return 'SkorEvent.updateSkor(skor: $skor)';
}


}

/// @nodoc
abstract mixin class _$UpdateSkorCopyWith<$Res> implements $SkorEventCopyWith<$Res> {
  factory _$UpdateSkorCopyWith(_UpdateSkor value, $Res Function(_UpdateSkor) _then) = __$UpdateSkorCopyWithImpl;
@useResult
$Res call({
 Skor skor
});




}
/// @nodoc
class __$UpdateSkorCopyWithImpl<$Res>
    implements _$UpdateSkorCopyWith<$Res> {
  __$UpdateSkorCopyWithImpl(this._self, this._then);

  final _UpdateSkor _self;
  final $Res Function(_UpdateSkor) _then;

/// Create a copy of SkorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? skor = null,}) {
  return _then(_UpdateSkor(
null == skor ? _self.skor : skor // ignore: cast_nullable_to_non_nullable
as Skor,
  ));
}


}

/// @nodoc
mixin _$SkorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SkorState()';
}


}

/// @nodoc
class $SkorStateCopyWith<$Res>  {
$SkorStateCopyWith(SkorState _, $Res Function(SkorState) __);
}


/// Adds pattern-matching-related methods to [SkorState].
extension SkorStatePatterns on SkorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SkorInitial value)?  initial,TResult Function( SkorLoading value)?  loading,TResult Function( SkorLoaded value)?  loaded,TResult Function( SkorSuccess value)?  success,TResult Function( SkorError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SkorInitial() when initial != null:
return initial(_that);case SkorLoading() when loading != null:
return loading(_that);case SkorLoaded() when loaded != null:
return loaded(_that);case SkorSuccess() when success != null:
return success(_that);case SkorError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SkorInitial value)  initial,required TResult Function( SkorLoading value)  loading,required TResult Function( SkorLoaded value)  loaded,required TResult Function( SkorSuccess value)  success,required TResult Function( SkorError value)  error,}){
final _that = this;
switch (_that) {
case SkorInitial():
return initial(_that);case SkorLoading():
return loading(_that);case SkorLoaded():
return loaded(_that);case SkorSuccess():
return success(_that);case SkorError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SkorInitial value)?  initial,TResult? Function( SkorLoading value)?  loading,TResult? Function( SkorLoaded value)?  loaded,TResult? Function( SkorSuccess value)?  success,TResult? Function( SkorError value)?  error,}){
final _that = this;
switch (_that) {
case SkorInitial() when initial != null:
return initial(_that);case SkorLoading() when loading != null:
return loading(_that);case SkorLoaded() when loaded != null:
return loaded(_that);case SkorSuccess() when success != null:
return success(_that);case SkorError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<SkorMasterResponseModel> skor)?  loaded,TResult Function( List<Skor> skor)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SkorInitial() when initial != null:
return initial();case SkorLoading() when loading != null:
return loading();case SkorLoaded() when loaded != null:
return loaded(_that.skor);case SkorSuccess() when success != null:
return success(_that.skor);case SkorError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<SkorMasterResponseModel> skor)  loaded,required TResult Function( List<Skor> skor)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case SkorInitial():
return initial();case SkorLoading():
return loading();case SkorLoaded():
return loaded(_that.skor);case SkorSuccess():
return success(_that.skor);case SkorError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<SkorMasterResponseModel> skor)?  loaded,TResult? Function( List<Skor> skor)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case SkorInitial() when initial != null:
return initial();case SkorLoading() when loading != null:
return loading();case SkorLoaded() when loaded != null:
return loaded(_that.skor);case SkorSuccess() when success != null:
return success(_that.skor);case SkorError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SkorInitial implements SkorState {
  const SkorInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkorInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SkorState.initial()';
}


}




/// @nodoc


class SkorLoading implements SkorState {
  const SkorLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkorLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SkorState.loading()';
}


}




/// @nodoc


class SkorLoaded implements SkorState {
  const SkorLoaded(final  List<SkorMasterResponseModel> skor): _skor = skor;
  

 final  List<SkorMasterResponseModel> _skor;
 List<SkorMasterResponseModel> get skor {
  if (_skor is EqualUnmodifiableListView) return _skor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skor);
}


/// Create a copy of SkorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkorLoadedCopyWith<SkorLoaded> get copyWith => _$SkorLoadedCopyWithImpl<SkorLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkorLoaded&&const DeepCollectionEquality().equals(other._skor, _skor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_skor));

@override
String toString() {
  return 'SkorState.loaded(skor: $skor)';
}


}

/// @nodoc
abstract mixin class $SkorLoadedCopyWith<$Res> implements $SkorStateCopyWith<$Res> {
  factory $SkorLoadedCopyWith(SkorLoaded value, $Res Function(SkorLoaded) _then) = _$SkorLoadedCopyWithImpl;
@useResult
$Res call({
 List<SkorMasterResponseModel> skor
});




}
/// @nodoc
class _$SkorLoadedCopyWithImpl<$Res>
    implements $SkorLoadedCopyWith<$Res> {
  _$SkorLoadedCopyWithImpl(this._self, this._then);

  final SkorLoaded _self;
  final $Res Function(SkorLoaded) _then;

/// Create a copy of SkorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? skor = null,}) {
  return _then(SkorLoaded(
null == skor ? _self._skor : skor // ignore: cast_nullable_to_non_nullable
as List<SkorMasterResponseModel>,
  ));
}


}

/// @nodoc


class SkorSuccess implements SkorState {
  const SkorSuccess(final  List<Skor> skor): _skor = skor;
  

 final  List<Skor> _skor;
 List<Skor> get skor {
  if (_skor is EqualUnmodifiableListView) return _skor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skor);
}


/// Create a copy of SkorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkorSuccessCopyWith<SkorSuccess> get copyWith => _$SkorSuccessCopyWithImpl<SkorSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkorSuccess&&const DeepCollectionEquality().equals(other._skor, _skor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_skor));

@override
String toString() {
  return 'SkorState.success(skor: $skor)';
}


}

/// @nodoc
abstract mixin class $SkorSuccessCopyWith<$Res> implements $SkorStateCopyWith<$Res> {
  factory $SkorSuccessCopyWith(SkorSuccess value, $Res Function(SkorSuccess) _then) = _$SkorSuccessCopyWithImpl;
@useResult
$Res call({
 List<Skor> skor
});




}
/// @nodoc
class _$SkorSuccessCopyWithImpl<$Res>
    implements $SkorSuccessCopyWith<$Res> {
  _$SkorSuccessCopyWithImpl(this._self, this._then);

  final SkorSuccess _self;
  final $Res Function(SkorSuccess) _then;

/// Create a copy of SkorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? skor = null,}) {
  return _then(SkorSuccess(
null == skor ? _self._skor : skor // ignore: cast_nullable_to_non_nullable
as List<Skor>,
  ));
}


}

/// @nodoc


class SkorError implements SkorState {
  const SkorError(this.message);
  

 final  String message;

/// Create a copy of SkorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkorErrorCopyWith<SkorError> get copyWith => _$SkorErrorCopyWithImpl<SkorError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkorError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SkorState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SkorErrorCopyWith<$Res> implements $SkorStateCopyWith<$Res> {
  factory $SkorErrorCopyWith(SkorError value, $Res Function(SkorError) _then) = _$SkorErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SkorErrorCopyWithImpl<$Res>
    implements $SkorErrorCopyWith<$Res> {
  _$SkorErrorCopyWithImpl(this._self, this._then);

  final SkorError _self;
  final $Res Function(SkorError) _then;

/// Create a copy of SkorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SkorError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
