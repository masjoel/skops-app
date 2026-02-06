// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kelas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KelasEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KelasEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KelasEvent()';
}


}

/// @nodoc
class $KelasEventCopyWith<$Res>  {
$KelasEventCopyWith(KelasEvent _, $Res Function(KelasEvent) __);
}


/// Adds pattern-matching-related methods to [KelasEvent].
extension KelasEventPatterns on KelasEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _SearchKelas value)?  searchKelas,TResult Function( _AddKelas value)?  addKelas,TResult Function( _DeleteKelas value)?  deleteKelas,TResult Function( _UpdateKelas value)?  updateKelas,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchKelas() when searchKelas != null:
return searchKelas(_that);case _AddKelas() when addKelas != null:
return addKelas(_that);case _DeleteKelas() when deleteKelas != null:
return deleteKelas(_that);case _UpdateKelas() when updateKelas != null:
return updateKelas(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _SearchKelas value)  searchKelas,required TResult Function( _AddKelas value)  addKelas,required TResult Function( _DeleteKelas value)  deleteKelas,required TResult Function( _UpdateKelas value)  updateKelas,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _SearchKelas():
return searchKelas(_that);case _AddKelas():
return addKelas(_that);case _DeleteKelas():
return deleteKelas(_that);case _UpdateKelas():
return updateKelas(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _SearchKelas value)?  searchKelas,TResult? Function( _AddKelas value)?  addKelas,TResult? Function( _DeleteKelas value)?  deleteKelas,TResult? Function( _UpdateKelas value)?  updateKelas,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchKelas() when searchKelas != null:
return searchKelas(_that);case _AddKelas() when addKelas != null:
return addKelas(_that);case _DeleteKelas() when deleteKelas != null:
return deleteKelas(_that);case _UpdateKelas() when updateKelas != null:
return updateKelas(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetch,TResult Function( String query)?  searchKelas,TResult Function( KelasRequestModel kelas)?  addKelas,TResult Function( int id)?  deleteKelas,TResult Function( Kelas kelas)?  updateKelas,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchKelas() when searchKelas != null:
return searchKelas(_that.query);case _AddKelas() when addKelas != null:
return addKelas(_that.kelas);case _DeleteKelas() when deleteKelas != null:
return deleteKelas(_that.id);case _UpdateKelas() when updateKelas != null:
return updateKelas(_that.kelas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetch,required TResult Function( String query)  searchKelas,required TResult Function( KelasRequestModel kelas)  addKelas,required TResult Function( int id)  deleteKelas,required TResult Function( Kelas kelas)  updateKelas,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch();case _SearchKelas():
return searchKelas(_that.query);case _AddKelas():
return addKelas(_that.kelas);case _DeleteKelas():
return deleteKelas(_that.id);case _UpdateKelas():
return updateKelas(_that.kelas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetch,TResult? Function( String query)?  searchKelas,TResult? Function( KelasRequestModel kelas)?  addKelas,TResult? Function( int id)?  deleteKelas,TResult? Function( Kelas kelas)?  updateKelas,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchKelas() when searchKelas != null:
return searchKelas(_that.query);case _AddKelas() when addKelas != null:
return addKelas(_that.kelas);case _DeleteKelas() when deleteKelas != null:
return deleteKelas(_that.id);case _UpdateKelas() when updateKelas != null:
return updateKelas(_that.kelas);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements KelasEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KelasEvent.started()';
}


}




/// @nodoc


class _Fetch implements KelasEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KelasEvent.fetch()';
}


}




/// @nodoc


class _SearchKelas implements KelasEvent {
  const _SearchKelas(this.query);
  

 final  String query;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchKelasCopyWith<_SearchKelas> get copyWith => __$SearchKelasCopyWithImpl<_SearchKelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchKelas&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'KelasEvent.searchKelas(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchKelasCopyWith<$Res> implements $KelasEventCopyWith<$Res> {
  factory _$SearchKelasCopyWith(_SearchKelas value, $Res Function(_SearchKelas) _then) = __$SearchKelasCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchKelasCopyWithImpl<$Res>
    implements _$SearchKelasCopyWith<$Res> {
  __$SearchKelasCopyWithImpl(this._self, this._then);

  final _SearchKelas _self;
  final $Res Function(_SearchKelas) _then;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchKelas(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddKelas implements KelasEvent {
  const _AddKelas(this.kelas);
  

 final  KelasRequestModel kelas;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddKelasCopyWith<_AddKelas> get copyWith => __$AddKelasCopyWithImpl<_AddKelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddKelas&&(identical(other.kelas, kelas) || other.kelas == kelas));
}


@override
int get hashCode => Object.hash(runtimeType,kelas);

@override
String toString() {
  return 'KelasEvent.addKelas(kelas: $kelas)';
}


}

/// @nodoc
abstract mixin class _$AddKelasCopyWith<$Res> implements $KelasEventCopyWith<$Res> {
  factory _$AddKelasCopyWith(_AddKelas value, $Res Function(_AddKelas) _then) = __$AddKelasCopyWithImpl;
@useResult
$Res call({
 KelasRequestModel kelas
});




}
/// @nodoc
class __$AddKelasCopyWithImpl<$Res>
    implements _$AddKelasCopyWith<$Res> {
  __$AddKelasCopyWithImpl(this._self, this._then);

  final _AddKelas _self;
  final $Res Function(_AddKelas) _then;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kelas = null,}) {
  return _then(_AddKelas(
null == kelas ? _self.kelas : kelas // ignore: cast_nullable_to_non_nullable
as KelasRequestModel,
  ));
}


}

/// @nodoc


class _DeleteKelas implements KelasEvent {
  const _DeleteKelas(this.id);
  

 final  int id;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteKelasCopyWith<_DeleteKelas> get copyWith => __$DeleteKelasCopyWithImpl<_DeleteKelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteKelas&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'KelasEvent.deleteKelas(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteKelasCopyWith<$Res> implements $KelasEventCopyWith<$Res> {
  factory _$DeleteKelasCopyWith(_DeleteKelas value, $Res Function(_DeleteKelas) _then) = __$DeleteKelasCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteKelasCopyWithImpl<$Res>
    implements _$DeleteKelasCopyWith<$Res> {
  __$DeleteKelasCopyWithImpl(this._self, this._then);

  final _DeleteKelas _self;
  final $Res Function(_DeleteKelas) _then;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteKelas(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateKelas implements KelasEvent {
  const _UpdateKelas(this.kelas);
  

 final  Kelas kelas;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateKelasCopyWith<_UpdateKelas> get copyWith => __$UpdateKelasCopyWithImpl<_UpdateKelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateKelas&&(identical(other.kelas, kelas) || other.kelas == kelas));
}


@override
int get hashCode => Object.hash(runtimeType,kelas);

@override
String toString() {
  return 'KelasEvent.updateKelas(kelas: $kelas)';
}


}

/// @nodoc
abstract mixin class _$UpdateKelasCopyWith<$Res> implements $KelasEventCopyWith<$Res> {
  factory _$UpdateKelasCopyWith(_UpdateKelas value, $Res Function(_UpdateKelas) _then) = __$UpdateKelasCopyWithImpl;
@useResult
$Res call({
 Kelas kelas
});




}
/// @nodoc
class __$UpdateKelasCopyWithImpl<$Res>
    implements _$UpdateKelasCopyWith<$Res> {
  __$UpdateKelasCopyWithImpl(this._self, this._then);

  final _UpdateKelas _self;
  final $Res Function(_UpdateKelas) _then;

/// Create a copy of KelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kelas = null,}) {
  return _then(_UpdateKelas(
null == kelas ? _self.kelas : kelas // ignore: cast_nullable_to_non_nullable
as Kelas,
  ));
}


}

/// @nodoc
mixin _$KelasState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KelasState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KelasState()';
}


}

/// @nodoc
class $KelasStateCopyWith<$Res>  {
$KelasStateCopyWith(KelasState _, $Res Function(KelasState) __);
}


/// Adds pattern-matching-related methods to [KelasState].
extension KelasStatePatterns on KelasState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( KelasInitial value)?  initial,TResult Function( KelasLoading value)?  loading,TResult Function( KelasLoaded value)?  loaded,TResult Function( KelasSuccess value)?  success,TResult Function( KelasError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case KelasInitial() when initial != null:
return initial(_that);case KelasLoading() when loading != null:
return loading(_that);case KelasLoaded() when loaded != null:
return loaded(_that);case KelasSuccess() when success != null:
return success(_that);case KelasError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( KelasInitial value)  initial,required TResult Function( KelasLoading value)  loading,required TResult Function( KelasLoaded value)  loaded,required TResult Function( KelasSuccess value)  success,required TResult Function( KelasError value)  error,}){
final _that = this;
switch (_that) {
case KelasInitial():
return initial(_that);case KelasLoading():
return loading(_that);case KelasLoaded():
return loaded(_that);case KelasSuccess():
return success(_that);case KelasError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( KelasInitial value)?  initial,TResult? Function( KelasLoading value)?  loading,TResult? Function( KelasLoaded value)?  loaded,TResult? Function( KelasSuccess value)?  success,TResult? Function( KelasError value)?  error,}){
final _that = this;
switch (_that) {
case KelasInitial() when initial != null:
return initial(_that);case KelasLoading() when loading != null:
return loading(_that);case KelasLoaded() when loaded != null:
return loaded(_that);case KelasSuccess() when success != null:
return success(_that);case KelasError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<KelasResponseModel> kelas)?  loaded,TResult Function( List<Kelas> kelas)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case KelasInitial() when initial != null:
return initial();case KelasLoading() when loading != null:
return loading();case KelasLoaded() when loaded != null:
return loaded(_that.kelas);case KelasSuccess() when success != null:
return success(_that.kelas);case KelasError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<KelasResponseModel> kelas)  loaded,required TResult Function( List<Kelas> kelas)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case KelasInitial():
return initial();case KelasLoading():
return loading();case KelasLoaded():
return loaded(_that.kelas);case KelasSuccess():
return success(_that.kelas);case KelasError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<KelasResponseModel> kelas)?  loaded,TResult? Function( List<Kelas> kelas)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case KelasInitial() when initial != null:
return initial();case KelasLoading() when loading != null:
return loading();case KelasLoaded() when loaded != null:
return loaded(_that.kelas);case KelasSuccess() when success != null:
return success(_that.kelas);case KelasError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class KelasInitial implements KelasState {
  const KelasInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KelasInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KelasState.initial()';
}


}




/// @nodoc


class KelasLoading implements KelasState {
  const KelasLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KelasLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KelasState.loading()';
}


}




/// @nodoc


class KelasLoaded implements KelasState {
  const KelasLoaded(final  List<KelasResponseModel> kelas): _kelas = kelas;
  

 final  List<KelasResponseModel> _kelas;
 List<KelasResponseModel> get kelas {
  if (_kelas is EqualUnmodifiableListView) return _kelas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kelas);
}


/// Create a copy of KelasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KelasLoadedCopyWith<KelasLoaded> get copyWith => _$KelasLoadedCopyWithImpl<KelasLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KelasLoaded&&const DeepCollectionEquality().equals(other._kelas, _kelas));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_kelas));

@override
String toString() {
  return 'KelasState.loaded(kelas: $kelas)';
}


}

/// @nodoc
abstract mixin class $KelasLoadedCopyWith<$Res> implements $KelasStateCopyWith<$Res> {
  factory $KelasLoadedCopyWith(KelasLoaded value, $Res Function(KelasLoaded) _then) = _$KelasLoadedCopyWithImpl;
@useResult
$Res call({
 List<KelasResponseModel> kelas
});




}
/// @nodoc
class _$KelasLoadedCopyWithImpl<$Res>
    implements $KelasLoadedCopyWith<$Res> {
  _$KelasLoadedCopyWithImpl(this._self, this._then);

  final KelasLoaded _self;
  final $Res Function(KelasLoaded) _then;

/// Create a copy of KelasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kelas = null,}) {
  return _then(KelasLoaded(
null == kelas ? _self._kelas : kelas // ignore: cast_nullable_to_non_nullable
as List<KelasResponseModel>,
  ));
}


}

/// @nodoc


class KelasSuccess implements KelasState {
  const KelasSuccess(final  List<Kelas> kelas): _kelas = kelas;
  

 final  List<Kelas> _kelas;
 List<Kelas> get kelas {
  if (_kelas is EqualUnmodifiableListView) return _kelas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kelas);
}


/// Create a copy of KelasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KelasSuccessCopyWith<KelasSuccess> get copyWith => _$KelasSuccessCopyWithImpl<KelasSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KelasSuccess&&const DeepCollectionEquality().equals(other._kelas, _kelas));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_kelas));

@override
String toString() {
  return 'KelasState.success(kelas: $kelas)';
}


}

/// @nodoc
abstract mixin class $KelasSuccessCopyWith<$Res> implements $KelasStateCopyWith<$Res> {
  factory $KelasSuccessCopyWith(KelasSuccess value, $Res Function(KelasSuccess) _then) = _$KelasSuccessCopyWithImpl;
@useResult
$Res call({
 List<Kelas> kelas
});




}
/// @nodoc
class _$KelasSuccessCopyWithImpl<$Res>
    implements $KelasSuccessCopyWith<$Res> {
  _$KelasSuccessCopyWithImpl(this._self, this._then);

  final KelasSuccess _self;
  final $Res Function(KelasSuccess) _then;

/// Create a copy of KelasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kelas = null,}) {
  return _then(KelasSuccess(
null == kelas ? _self._kelas : kelas // ignore: cast_nullable_to_non_nullable
as List<Kelas>,
  ));
}


}

/// @nodoc


class KelasError implements KelasState {
  const KelasError(this.message);
  

 final  String message;

/// Create a copy of KelasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KelasErrorCopyWith<KelasError> get copyWith => _$KelasErrorCopyWithImpl<KelasError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KelasError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'KelasState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $KelasErrorCopyWith<$Res> implements $KelasStateCopyWith<$Res> {
  factory $KelasErrorCopyWith(KelasError value, $Res Function(KelasError) _then) = _$KelasErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$KelasErrorCopyWithImpl<$Res>
    implements $KelasErrorCopyWith<$Res> {
  _$KelasErrorCopyWithImpl(this._self, this._then);

  final KelasError _self;
  final $Res Function(KelasError) _then;

/// Create a copy of KelasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(KelasError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
