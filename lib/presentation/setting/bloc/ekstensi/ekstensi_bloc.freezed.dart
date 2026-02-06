// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ekstensi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EkstensiEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EkstensiEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EkstensiEvent()';
}


}

/// @nodoc
class $EkstensiEventCopyWith<$Res>  {
$EkstensiEventCopyWith(EkstensiEvent _, $Res Function(EkstensiEvent) __);
}


/// Adds pattern-matching-related methods to [EkstensiEvent].
extension EkstensiEventPatterns on EkstensiEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _SearchEkstensi value)?  searchEkstensi,TResult Function( _AddEkstensi value)?  addEkstensi,TResult Function( _DeleteEkstensi value)?  deleteEkstensi,TResult Function( _UpdateEkstensi value)?  updateEkstensi,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchEkstensi() when searchEkstensi != null:
return searchEkstensi(_that);case _AddEkstensi() when addEkstensi != null:
return addEkstensi(_that);case _DeleteEkstensi() when deleteEkstensi != null:
return deleteEkstensi(_that);case _UpdateEkstensi() when updateEkstensi != null:
return updateEkstensi(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _SearchEkstensi value)  searchEkstensi,required TResult Function( _AddEkstensi value)  addEkstensi,required TResult Function( _DeleteEkstensi value)  deleteEkstensi,required TResult Function( _UpdateEkstensi value)  updateEkstensi,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _SearchEkstensi():
return searchEkstensi(_that);case _AddEkstensi():
return addEkstensi(_that);case _DeleteEkstensi():
return deleteEkstensi(_that);case _UpdateEkstensi():
return updateEkstensi(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _SearchEkstensi value)?  searchEkstensi,TResult? Function( _AddEkstensi value)?  addEkstensi,TResult? Function( _DeleteEkstensi value)?  deleteEkstensi,TResult? Function( _UpdateEkstensi value)?  updateEkstensi,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchEkstensi() when searchEkstensi != null:
return searchEkstensi(_that);case _AddEkstensi() when addEkstensi != null:
return addEkstensi(_that);case _DeleteEkstensi() when deleteEkstensi != null:
return deleteEkstensi(_that);case _UpdateEkstensi() when updateEkstensi != null:
return updateEkstensi(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetch,TResult Function( String query)?  searchEkstensi,TResult Function( EkstensiRequestModel ekstensi)?  addEkstensi,TResult Function( int id)?  deleteEkstensi,TResult Function( KelasExt ekstensi)?  updateEkstensi,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchEkstensi() when searchEkstensi != null:
return searchEkstensi(_that.query);case _AddEkstensi() when addEkstensi != null:
return addEkstensi(_that.ekstensi);case _DeleteEkstensi() when deleteEkstensi != null:
return deleteEkstensi(_that.id);case _UpdateEkstensi() when updateEkstensi != null:
return updateEkstensi(_that.ekstensi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetch,required TResult Function( String query)  searchEkstensi,required TResult Function( EkstensiRequestModel ekstensi)  addEkstensi,required TResult Function( int id)  deleteEkstensi,required TResult Function( KelasExt ekstensi)  updateEkstensi,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch();case _SearchEkstensi():
return searchEkstensi(_that.query);case _AddEkstensi():
return addEkstensi(_that.ekstensi);case _DeleteEkstensi():
return deleteEkstensi(_that.id);case _UpdateEkstensi():
return updateEkstensi(_that.ekstensi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetch,TResult? Function( String query)?  searchEkstensi,TResult? Function( EkstensiRequestModel ekstensi)?  addEkstensi,TResult? Function( int id)?  deleteEkstensi,TResult? Function( KelasExt ekstensi)?  updateEkstensi,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchEkstensi() when searchEkstensi != null:
return searchEkstensi(_that.query);case _AddEkstensi() when addEkstensi != null:
return addEkstensi(_that.ekstensi);case _DeleteEkstensi() when deleteEkstensi != null:
return deleteEkstensi(_that.id);case _UpdateEkstensi() when updateEkstensi != null:
return updateEkstensi(_that.ekstensi);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements EkstensiEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EkstensiEvent.started()';
}


}




/// @nodoc


class _Fetch implements EkstensiEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EkstensiEvent.fetch()';
}


}




/// @nodoc


class _SearchEkstensi implements EkstensiEvent {
  const _SearchEkstensi(this.query);
  

 final  String query;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchEkstensiCopyWith<_SearchEkstensi> get copyWith => __$SearchEkstensiCopyWithImpl<_SearchEkstensi>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchEkstensi&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'EkstensiEvent.searchEkstensi(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchEkstensiCopyWith<$Res> implements $EkstensiEventCopyWith<$Res> {
  factory _$SearchEkstensiCopyWith(_SearchEkstensi value, $Res Function(_SearchEkstensi) _then) = __$SearchEkstensiCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchEkstensiCopyWithImpl<$Res>
    implements _$SearchEkstensiCopyWith<$Res> {
  __$SearchEkstensiCopyWithImpl(this._self, this._then);

  final _SearchEkstensi _self;
  final $Res Function(_SearchEkstensi) _then;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchEkstensi(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddEkstensi implements EkstensiEvent {
  const _AddEkstensi(this.ekstensi);
  

 final  EkstensiRequestModel ekstensi;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddEkstensiCopyWith<_AddEkstensi> get copyWith => __$AddEkstensiCopyWithImpl<_AddEkstensi>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddEkstensi&&(identical(other.ekstensi, ekstensi) || other.ekstensi == ekstensi));
}


@override
int get hashCode => Object.hash(runtimeType,ekstensi);

@override
String toString() {
  return 'EkstensiEvent.addEkstensi(ekstensi: $ekstensi)';
}


}

/// @nodoc
abstract mixin class _$AddEkstensiCopyWith<$Res> implements $EkstensiEventCopyWith<$Res> {
  factory _$AddEkstensiCopyWith(_AddEkstensi value, $Res Function(_AddEkstensi) _then) = __$AddEkstensiCopyWithImpl;
@useResult
$Res call({
 EkstensiRequestModel ekstensi
});




}
/// @nodoc
class __$AddEkstensiCopyWithImpl<$Res>
    implements _$AddEkstensiCopyWith<$Res> {
  __$AddEkstensiCopyWithImpl(this._self, this._then);

  final _AddEkstensi _self;
  final $Res Function(_AddEkstensi) _then;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ekstensi = null,}) {
  return _then(_AddEkstensi(
null == ekstensi ? _self.ekstensi : ekstensi // ignore: cast_nullable_to_non_nullable
as EkstensiRequestModel,
  ));
}


}

/// @nodoc


class _DeleteEkstensi implements EkstensiEvent {
  const _DeleteEkstensi(this.id);
  

 final  int id;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteEkstensiCopyWith<_DeleteEkstensi> get copyWith => __$DeleteEkstensiCopyWithImpl<_DeleteEkstensi>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteEkstensi&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'EkstensiEvent.deleteEkstensi(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteEkstensiCopyWith<$Res> implements $EkstensiEventCopyWith<$Res> {
  factory _$DeleteEkstensiCopyWith(_DeleteEkstensi value, $Res Function(_DeleteEkstensi) _then) = __$DeleteEkstensiCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteEkstensiCopyWithImpl<$Res>
    implements _$DeleteEkstensiCopyWith<$Res> {
  __$DeleteEkstensiCopyWithImpl(this._self, this._then);

  final _DeleteEkstensi _self;
  final $Res Function(_DeleteEkstensi) _then;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteEkstensi(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateEkstensi implements EkstensiEvent {
  const _UpdateEkstensi(this.ekstensi);
  

 final  KelasExt ekstensi;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEkstensiCopyWith<_UpdateEkstensi> get copyWith => __$UpdateEkstensiCopyWithImpl<_UpdateEkstensi>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEkstensi&&(identical(other.ekstensi, ekstensi) || other.ekstensi == ekstensi));
}


@override
int get hashCode => Object.hash(runtimeType,ekstensi);

@override
String toString() {
  return 'EkstensiEvent.updateEkstensi(ekstensi: $ekstensi)';
}


}

/// @nodoc
abstract mixin class _$UpdateEkstensiCopyWith<$Res> implements $EkstensiEventCopyWith<$Res> {
  factory _$UpdateEkstensiCopyWith(_UpdateEkstensi value, $Res Function(_UpdateEkstensi) _then) = __$UpdateEkstensiCopyWithImpl;
@useResult
$Res call({
 KelasExt ekstensi
});




}
/// @nodoc
class __$UpdateEkstensiCopyWithImpl<$Res>
    implements _$UpdateEkstensiCopyWith<$Res> {
  __$UpdateEkstensiCopyWithImpl(this._self, this._then);

  final _UpdateEkstensi _self;
  final $Res Function(_UpdateEkstensi) _then;

/// Create a copy of EkstensiEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ekstensi = null,}) {
  return _then(_UpdateEkstensi(
null == ekstensi ? _self.ekstensi : ekstensi // ignore: cast_nullable_to_non_nullable
as KelasExt,
  ));
}


}

/// @nodoc
mixin _$EkstensiState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EkstensiState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EkstensiState()';
}


}

/// @nodoc
class $EkstensiStateCopyWith<$Res>  {
$EkstensiStateCopyWith(EkstensiState _, $Res Function(EkstensiState) __);
}


/// Adds pattern-matching-related methods to [EkstensiState].
extension EkstensiStatePatterns on EkstensiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EkstensiInitial value)?  initial,TResult Function( EkstensiLoading value)?  loading,TResult Function( EkstensiLoaded value)?  loaded,TResult Function( EkstensiSuccess value)?  success,TResult Function( EkstensiError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EkstensiInitial() when initial != null:
return initial(_that);case EkstensiLoading() when loading != null:
return loading(_that);case EkstensiLoaded() when loaded != null:
return loaded(_that);case EkstensiSuccess() when success != null:
return success(_that);case EkstensiError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EkstensiInitial value)  initial,required TResult Function( EkstensiLoading value)  loading,required TResult Function( EkstensiLoaded value)  loaded,required TResult Function( EkstensiSuccess value)  success,required TResult Function( EkstensiError value)  error,}){
final _that = this;
switch (_that) {
case EkstensiInitial():
return initial(_that);case EkstensiLoading():
return loading(_that);case EkstensiLoaded():
return loaded(_that);case EkstensiSuccess():
return success(_that);case EkstensiError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EkstensiInitial value)?  initial,TResult? Function( EkstensiLoading value)?  loading,TResult? Function( EkstensiLoaded value)?  loaded,TResult? Function( EkstensiSuccess value)?  success,TResult? Function( EkstensiError value)?  error,}){
final _that = this;
switch (_that) {
case EkstensiInitial() when initial != null:
return initial(_that);case EkstensiLoading() when loading != null:
return loading(_that);case EkstensiLoaded() when loaded != null:
return loaded(_that);case EkstensiSuccess() when success != null:
return success(_that);case EkstensiError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<EkstensiResponseModel> ekstensi)?  loaded,TResult Function( List<KelasExt> ekstensi)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EkstensiInitial() when initial != null:
return initial();case EkstensiLoading() when loading != null:
return loading();case EkstensiLoaded() when loaded != null:
return loaded(_that.ekstensi);case EkstensiSuccess() when success != null:
return success(_that.ekstensi);case EkstensiError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<EkstensiResponseModel> ekstensi)  loaded,required TResult Function( List<KelasExt> ekstensi)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case EkstensiInitial():
return initial();case EkstensiLoading():
return loading();case EkstensiLoaded():
return loaded(_that.ekstensi);case EkstensiSuccess():
return success(_that.ekstensi);case EkstensiError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<EkstensiResponseModel> ekstensi)?  loaded,TResult? Function( List<KelasExt> ekstensi)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case EkstensiInitial() when initial != null:
return initial();case EkstensiLoading() when loading != null:
return loading();case EkstensiLoaded() when loaded != null:
return loaded(_that.ekstensi);case EkstensiSuccess() when success != null:
return success(_that.ekstensi);case EkstensiError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class EkstensiInitial implements EkstensiState {
  const EkstensiInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EkstensiInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EkstensiState.initial()';
}


}




/// @nodoc


class EkstensiLoading implements EkstensiState {
  const EkstensiLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EkstensiLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EkstensiState.loading()';
}


}




/// @nodoc


class EkstensiLoaded implements EkstensiState {
  const EkstensiLoaded(final  List<EkstensiResponseModel> ekstensi): _ekstensi = ekstensi;
  

 final  List<EkstensiResponseModel> _ekstensi;
 List<EkstensiResponseModel> get ekstensi {
  if (_ekstensi is EqualUnmodifiableListView) return _ekstensi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ekstensi);
}


/// Create a copy of EkstensiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EkstensiLoadedCopyWith<EkstensiLoaded> get copyWith => _$EkstensiLoadedCopyWithImpl<EkstensiLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EkstensiLoaded&&const DeepCollectionEquality().equals(other._ekstensi, _ekstensi));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ekstensi));

@override
String toString() {
  return 'EkstensiState.loaded(ekstensi: $ekstensi)';
}


}

/// @nodoc
abstract mixin class $EkstensiLoadedCopyWith<$Res> implements $EkstensiStateCopyWith<$Res> {
  factory $EkstensiLoadedCopyWith(EkstensiLoaded value, $Res Function(EkstensiLoaded) _then) = _$EkstensiLoadedCopyWithImpl;
@useResult
$Res call({
 List<EkstensiResponseModel> ekstensi
});




}
/// @nodoc
class _$EkstensiLoadedCopyWithImpl<$Res>
    implements $EkstensiLoadedCopyWith<$Res> {
  _$EkstensiLoadedCopyWithImpl(this._self, this._then);

  final EkstensiLoaded _self;
  final $Res Function(EkstensiLoaded) _then;

/// Create a copy of EkstensiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ekstensi = null,}) {
  return _then(EkstensiLoaded(
null == ekstensi ? _self._ekstensi : ekstensi // ignore: cast_nullable_to_non_nullable
as List<EkstensiResponseModel>,
  ));
}


}

/// @nodoc


class EkstensiSuccess implements EkstensiState {
  const EkstensiSuccess(final  List<KelasExt> ekstensi): _ekstensi = ekstensi;
  

 final  List<KelasExt> _ekstensi;
 List<KelasExt> get ekstensi {
  if (_ekstensi is EqualUnmodifiableListView) return _ekstensi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ekstensi);
}


/// Create a copy of EkstensiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EkstensiSuccessCopyWith<EkstensiSuccess> get copyWith => _$EkstensiSuccessCopyWithImpl<EkstensiSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EkstensiSuccess&&const DeepCollectionEquality().equals(other._ekstensi, _ekstensi));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ekstensi));

@override
String toString() {
  return 'EkstensiState.success(ekstensi: $ekstensi)';
}


}

/// @nodoc
abstract mixin class $EkstensiSuccessCopyWith<$Res> implements $EkstensiStateCopyWith<$Res> {
  factory $EkstensiSuccessCopyWith(EkstensiSuccess value, $Res Function(EkstensiSuccess) _then) = _$EkstensiSuccessCopyWithImpl;
@useResult
$Res call({
 List<KelasExt> ekstensi
});




}
/// @nodoc
class _$EkstensiSuccessCopyWithImpl<$Res>
    implements $EkstensiSuccessCopyWith<$Res> {
  _$EkstensiSuccessCopyWithImpl(this._self, this._then);

  final EkstensiSuccess _self;
  final $Res Function(EkstensiSuccess) _then;

/// Create a copy of EkstensiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ekstensi = null,}) {
  return _then(EkstensiSuccess(
null == ekstensi ? _self._ekstensi : ekstensi // ignore: cast_nullable_to_non_nullable
as List<KelasExt>,
  ));
}


}

/// @nodoc


class EkstensiError implements EkstensiState {
  const EkstensiError(this.message);
  

 final  String message;

/// Create a copy of EkstensiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EkstensiErrorCopyWith<EkstensiError> get copyWith => _$EkstensiErrorCopyWithImpl<EkstensiError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EkstensiError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EkstensiState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $EkstensiErrorCopyWith<$Res> implements $EkstensiStateCopyWith<$Res> {
  factory $EkstensiErrorCopyWith(EkstensiError value, $Res Function(EkstensiError) _then) = _$EkstensiErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$EkstensiErrorCopyWithImpl<$Res>
    implements $EkstensiErrorCopyWith<$Res> {
  _$EkstensiErrorCopyWithImpl(this._self, this._then);

  final EkstensiError _self;
  final $Res Function(EkstensiError) _then;

/// Create a copy of EkstensiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(EkstensiError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
