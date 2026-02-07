// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walikelas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalikelasEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasEvent()';
}


}

/// @nodoc
class $WalikelasEventCopyWith<$Res>  {
$WalikelasEventCopyWith(WalikelasEvent _, $Res Function(WalikelasEvent) __);
}


/// Adds pattern-matching-related methods to [WalikelasEvent].
extension WalikelasEventPatterns on WalikelasEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _LoadMore value)?  loadMore,TResult Function( _AddWalikelas value)?  addWalikelas,TResult Function( _DeleteWalikelas value)?  deleteWalikelas,TResult Function( _UpdateWalikelas value)?  updateWalikelas,TResult Function( _SearchWalikelas value)?  searchWalikelas,TResult Function( _LoadWalikelas value)?  loadWalikelas,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddWalikelas() when addWalikelas != null:
return addWalikelas(_that);case _DeleteWalikelas() when deleteWalikelas != null:
return deleteWalikelas(_that);case _UpdateWalikelas() when updateWalikelas != null:
return updateWalikelas(_that);case _SearchWalikelas() when searchWalikelas != null:
return searchWalikelas(_that);case _LoadWalikelas() when loadWalikelas != null:
return loadWalikelas(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _AddWalikelas value)  addWalikelas,required TResult Function( _DeleteWalikelas value)  deleteWalikelas,required TResult Function( _UpdateWalikelas value)  updateWalikelas,required TResult Function( _SearchWalikelas value)  searchWalikelas,required TResult Function( _LoadWalikelas value)  loadWalikelas,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _LoadMore():
return loadMore(_that);case _AddWalikelas():
return addWalikelas(_that);case _DeleteWalikelas():
return deleteWalikelas(_that);case _UpdateWalikelas():
return updateWalikelas(_that);case _SearchWalikelas():
return searchWalikelas(_that);case _LoadWalikelas():
return loadWalikelas(_that);case _Refresh():
return refresh(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _AddWalikelas value)?  addWalikelas,TResult? Function( _DeleteWalikelas value)?  deleteWalikelas,TResult? Function( _UpdateWalikelas value)?  updateWalikelas,TResult? Function( _SearchWalikelas value)?  searchWalikelas,TResult? Function( _LoadWalikelas value)?  loadWalikelas,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddWalikelas() when addWalikelas != null:
return addWalikelas(_that);case _DeleteWalikelas() when deleteWalikelas != null:
return deleteWalikelas(_that);case _UpdateWalikelas() when updateWalikelas != null:
return updateWalikelas(_that);case _SearchWalikelas() when searchWalikelas != null:
return searchWalikelas(_that);case _LoadWalikelas() when loadWalikelas != null:
return loadWalikelas(_that);case _Refresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? search)?  fetch,TResult Function()?  loadMore,TResult Function( WalikelasRequestModel walikelas)?  addWalikelas,TResult Function( int id)?  deleteWalikelas,TResult Function( Walikelas walikelas)?  updateWalikelas,TResult Function( String query)?  searchWalikelas,TResult Function()?  loadWalikelas,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddWalikelas() when addWalikelas != null:
return addWalikelas(_that.walikelas);case _DeleteWalikelas() when deleteWalikelas != null:
return deleteWalikelas(_that.id);case _UpdateWalikelas() when updateWalikelas != null:
return updateWalikelas(_that.walikelas);case _SearchWalikelas() when searchWalikelas != null:
return searchWalikelas(_that.query);case _LoadWalikelas() when loadWalikelas != null:
return loadWalikelas();case _Refresh() when refresh != null:
return refresh();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? search)  fetch,required TResult Function()  loadMore,required TResult Function( WalikelasRequestModel walikelas)  addWalikelas,required TResult Function( int id)  deleteWalikelas,required TResult Function( Walikelas walikelas)  updateWalikelas,required TResult Function( String query)  searchWalikelas,required TResult Function()  loadWalikelas,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch(_that.search);case _LoadMore():
return loadMore();case _AddWalikelas():
return addWalikelas(_that.walikelas);case _DeleteWalikelas():
return deleteWalikelas(_that.id);case _UpdateWalikelas():
return updateWalikelas(_that.walikelas);case _SearchWalikelas():
return searchWalikelas(_that.query);case _LoadWalikelas():
return loadWalikelas();case _Refresh():
return refresh();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? search)?  fetch,TResult? Function()?  loadMore,TResult? Function( WalikelasRequestModel walikelas)?  addWalikelas,TResult? Function( int id)?  deleteWalikelas,TResult? Function( Walikelas walikelas)?  updateWalikelas,TResult? Function( String query)?  searchWalikelas,TResult? Function()?  loadWalikelas,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddWalikelas() when addWalikelas != null:
return addWalikelas(_that.walikelas);case _DeleteWalikelas() when deleteWalikelas != null:
return deleteWalikelas(_that.id);case _UpdateWalikelas() when updateWalikelas != null:
return updateWalikelas(_that.walikelas);case _SearchWalikelas() when searchWalikelas != null:
return searchWalikelas(_that.query);case _LoadWalikelas() when loadWalikelas != null:
return loadWalikelas();case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements WalikelasEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasEvent.started()';
}


}




/// @nodoc


class _Fetch implements WalikelasEvent {
  const _Fetch({this.search});
  

 final  String? search;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,search);

@override
String toString() {
  return 'WalikelasEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $WalikelasEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) = __$FetchCopyWithImpl;
@useResult
$Res call({
 String? search
});




}
/// @nodoc
class __$FetchCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(_Fetch(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadMore implements WalikelasEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasEvent.loadMore()';
}


}




/// @nodoc


class _AddWalikelas implements WalikelasEvent {
  const _AddWalikelas(this.walikelas);
  

 final  WalikelasRequestModel walikelas;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddWalikelasCopyWith<_AddWalikelas> get copyWith => __$AddWalikelasCopyWithImpl<_AddWalikelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddWalikelas&&(identical(other.walikelas, walikelas) || other.walikelas == walikelas));
}


@override
int get hashCode => Object.hash(runtimeType,walikelas);

@override
String toString() {
  return 'WalikelasEvent.addWalikelas(walikelas: $walikelas)';
}


}

/// @nodoc
abstract mixin class _$AddWalikelasCopyWith<$Res> implements $WalikelasEventCopyWith<$Res> {
  factory _$AddWalikelasCopyWith(_AddWalikelas value, $Res Function(_AddWalikelas) _then) = __$AddWalikelasCopyWithImpl;
@useResult
$Res call({
 WalikelasRequestModel walikelas
});




}
/// @nodoc
class __$AddWalikelasCopyWithImpl<$Res>
    implements _$AddWalikelasCopyWith<$Res> {
  __$AddWalikelasCopyWithImpl(this._self, this._then);

  final _AddWalikelas _self;
  final $Res Function(_AddWalikelas) _then;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walikelas = null,}) {
  return _then(_AddWalikelas(
null == walikelas ? _self.walikelas : walikelas // ignore: cast_nullable_to_non_nullable
as WalikelasRequestModel,
  ));
}


}

/// @nodoc


class _DeleteWalikelas implements WalikelasEvent {
  const _DeleteWalikelas(this.id);
  

 final  int id;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteWalikelasCopyWith<_DeleteWalikelas> get copyWith => __$DeleteWalikelasCopyWithImpl<_DeleteWalikelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteWalikelas&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WalikelasEvent.deleteWalikelas(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteWalikelasCopyWith<$Res> implements $WalikelasEventCopyWith<$Res> {
  factory _$DeleteWalikelasCopyWith(_DeleteWalikelas value, $Res Function(_DeleteWalikelas) _then) = __$DeleteWalikelasCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteWalikelasCopyWithImpl<$Res>
    implements _$DeleteWalikelasCopyWith<$Res> {
  __$DeleteWalikelasCopyWithImpl(this._self, this._then);

  final _DeleteWalikelas _self;
  final $Res Function(_DeleteWalikelas) _then;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteWalikelas(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateWalikelas implements WalikelasEvent {
  const _UpdateWalikelas(this.walikelas);
  

 final  Walikelas walikelas;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateWalikelasCopyWith<_UpdateWalikelas> get copyWith => __$UpdateWalikelasCopyWithImpl<_UpdateWalikelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateWalikelas&&(identical(other.walikelas, walikelas) || other.walikelas == walikelas));
}


@override
int get hashCode => Object.hash(runtimeType,walikelas);

@override
String toString() {
  return 'WalikelasEvent.updateWalikelas(walikelas: $walikelas)';
}


}

/// @nodoc
abstract mixin class _$UpdateWalikelasCopyWith<$Res> implements $WalikelasEventCopyWith<$Res> {
  factory _$UpdateWalikelasCopyWith(_UpdateWalikelas value, $Res Function(_UpdateWalikelas) _then) = __$UpdateWalikelasCopyWithImpl;
@useResult
$Res call({
 Walikelas walikelas
});




}
/// @nodoc
class __$UpdateWalikelasCopyWithImpl<$Res>
    implements _$UpdateWalikelasCopyWith<$Res> {
  __$UpdateWalikelasCopyWithImpl(this._self, this._then);

  final _UpdateWalikelas _self;
  final $Res Function(_UpdateWalikelas) _then;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walikelas = null,}) {
  return _then(_UpdateWalikelas(
null == walikelas ? _self.walikelas : walikelas // ignore: cast_nullable_to_non_nullable
as Walikelas,
  ));
}


}

/// @nodoc


class _SearchWalikelas implements WalikelasEvent {
  const _SearchWalikelas(this.query);
  

 final  String query;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchWalikelasCopyWith<_SearchWalikelas> get copyWith => __$SearchWalikelasCopyWithImpl<_SearchWalikelas>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchWalikelas&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'WalikelasEvent.searchWalikelas(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchWalikelasCopyWith<$Res> implements $WalikelasEventCopyWith<$Res> {
  factory _$SearchWalikelasCopyWith(_SearchWalikelas value, $Res Function(_SearchWalikelas) _then) = __$SearchWalikelasCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchWalikelasCopyWithImpl<$Res>
    implements _$SearchWalikelasCopyWith<$Res> {
  __$SearchWalikelasCopyWithImpl(this._self, this._then);

  final _SearchWalikelas _self;
  final $Res Function(_SearchWalikelas) _then;

/// Create a copy of WalikelasEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchWalikelas(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadWalikelas implements WalikelasEvent {
  const _LoadWalikelas();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadWalikelas);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasEvent.loadWalikelas()';
}


}




/// @nodoc


class _Refresh implements WalikelasEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasEvent.refresh()';
}


}




/// @nodoc
mixin _$WalikelasState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasState()';
}


}

/// @nodoc
class $WalikelasStateCopyWith<$Res>  {
$WalikelasStateCopyWith(WalikelasState _, $Res Function(WalikelasState) __);
}


/// Adds pattern-matching-related methods to [WalikelasState].
extension WalikelasStatePatterns on WalikelasState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WalikelasInitial value)?  initial,TResult Function( WalikelasLoading value)?  loading,TResult Function( WalikelasLoaded value)?  loaded,TResult Function( WalikelasSukses value)?  sukses,TResult Function( WalikelasSuccess value)?  success,TResult Function( WalikelasError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WalikelasInitial() when initial != null:
return initial(_that);case WalikelasLoading() when loading != null:
return loading(_that);case WalikelasLoaded() when loaded != null:
return loaded(_that);case WalikelasSukses() when sukses != null:
return sukses(_that);case WalikelasSuccess() when success != null:
return success(_that);case WalikelasError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WalikelasInitial value)  initial,required TResult Function( WalikelasLoading value)  loading,required TResult Function( WalikelasLoaded value)  loaded,required TResult Function( WalikelasSukses value)  sukses,required TResult Function( WalikelasSuccess value)  success,required TResult Function( WalikelasError value)  error,}){
final _that = this;
switch (_that) {
case WalikelasInitial():
return initial(_that);case WalikelasLoading():
return loading(_that);case WalikelasLoaded():
return loaded(_that);case WalikelasSukses():
return sukses(_that);case WalikelasSuccess():
return success(_that);case WalikelasError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WalikelasInitial value)?  initial,TResult? Function( WalikelasLoading value)?  loading,TResult? Function( WalikelasLoaded value)?  loaded,TResult? Function( WalikelasSukses value)?  sukses,TResult? Function( WalikelasSuccess value)?  success,TResult? Function( WalikelasError value)?  error,}){
final _that = this;
switch (_that) {
case WalikelasInitial() when initial != null:
return initial(_that);case WalikelasLoading() when loading != null:
return loading(_that);case WalikelasLoaded() when loaded != null:
return loaded(_that);case WalikelasSukses() when sukses != null:
return sukses(_that);case WalikelasSuccess() when success != null:
return success(_that);case WalikelasError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Walikelas> walikelas)?  loaded,TResult Function( List<Walikelas> walikelas)?  sukses,TResult Function( List<Walikelas> walikelas,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WalikelasInitial() when initial != null:
return initial();case WalikelasLoading() when loading != null:
return loading();case WalikelasLoaded() when loaded != null:
return loaded(_that.walikelas);case WalikelasSukses() when sukses != null:
return sukses(_that.walikelas);case WalikelasSuccess() when success != null:
return success(_that.walikelas,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case WalikelasError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Walikelas> walikelas)  loaded,required TResult Function( List<Walikelas> walikelas)  sukses,required TResult Function( List<Walikelas> walikelas,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case WalikelasInitial():
return initial();case WalikelasLoading():
return loading();case WalikelasLoaded():
return loaded(_that.walikelas);case WalikelasSukses():
return sukses(_that.walikelas);case WalikelasSuccess():
return success(_that.walikelas,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case WalikelasError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Walikelas> walikelas)?  loaded,TResult? Function( List<Walikelas> walikelas)?  sukses,TResult? Function( List<Walikelas> walikelas,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case WalikelasInitial() when initial != null:
return initial();case WalikelasLoading() when loading != null:
return loading();case WalikelasLoaded() when loaded != null:
return loaded(_that.walikelas);case WalikelasSukses() when sukses != null:
return sukses(_that.walikelas);case WalikelasSuccess() when success != null:
return success(_that.walikelas,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case WalikelasError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class WalikelasInitial implements WalikelasState {
  const WalikelasInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasState.initial()';
}


}




/// @nodoc


class WalikelasLoading implements WalikelasState {
  const WalikelasLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalikelasState.loading()';
}


}




/// @nodoc


class WalikelasLoaded implements WalikelasState {
  const WalikelasLoaded(final  List<Walikelas> walikelas): _walikelas = walikelas;
  

 final  List<Walikelas> _walikelas;
 List<Walikelas> get walikelas {
  if (_walikelas is EqualUnmodifiableListView) return _walikelas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_walikelas);
}


/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalikelasLoadedCopyWith<WalikelasLoaded> get copyWith => _$WalikelasLoadedCopyWithImpl<WalikelasLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasLoaded&&const DeepCollectionEquality().equals(other._walikelas, _walikelas));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_walikelas));

@override
String toString() {
  return 'WalikelasState.loaded(walikelas: $walikelas)';
}


}

/// @nodoc
abstract mixin class $WalikelasLoadedCopyWith<$Res> implements $WalikelasStateCopyWith<$Res> {
  factory $WalikelasLoadedCopyWith(WalikelasLoaded value, $Res Function(WalikelasLoaded) _then) = _$WalikelasLoadedCopyWithImpl;
@useResult
$Res call({
 List<Walikelas> walikelas
});




}
/// @nodoc
class _$WalikelasLoadedCopyWithImpl<$Res>
    implements $WalikelasLoadedCopyWith<$Res> {
  _$WalikelasLoadedCopyWithImpl(this._self, this._then);

  final WalikelasLoaded _self;
  final $Res Function(WalikelasLoaded) _then;

/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walikelas = null,}) {
  return _then(WalikelasLoaded(
null == walikelas ? _self._walikelas : walikelas // ignore: cast_nullable_to_non_nullable
as List<Walikelas>,
  ));
}


}

/// @nodoc


class WalikelasSukses implements WalikelasState {
  const WalikelasSukses(final  List<Walikelas> walikelas): _walikelas = walikelas;
  

 final  List<Walikelas> _walikelas;
 List<Walikelas> get walikelas {
  if (_walikelas is EqualUnmodifiableListView) return _walikelas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_walikelas);
}


/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalikelasSuksesCopyWith<WalikelasSukses> get copyWith => _$WalikelasSuksesCopyWithImpl<WalikelasSukses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasSukses&&const DeepCollectionEquality().equals(other._walikelas, _walikelas));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_walikelas));

@override
String toString() {
  return 'WalikelasState.sukses(walikelas: $walikelas)';
}


}

/// @nodoc
abstract mixin class $WalikelasSuksesCopyWith<$Res> implements $WalikelasStateCopyWith<$Res> {
  factory $WalikelasSuksesCopyWith(WalikelasSukses value, $Res Function(WalikelasSukses) _then) = _$WalikelasSuksesCopyWithImpl;
@useResult
$Res call({
 List<Walikelas> walikelas
});




}
/// @nodoc
class _$WalikelasSuksesCopyWithImpl<$Res>
    implements $WalikelasSuksesCopyWith<$Res> {
  _$WalikelasSuksesCopyWithImpl(this._self, this._then);

  final WalikelasSukses _self;
  final $Res Function(WalikelasSukses) _then;

/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walikelas = null,}) {
  return _then(WalikelasSukses(
null == walikelas ? _self._walikelas : walikelas // ignore: cast_nullable_to_non_nullable
as List<Walikelas>,
  ));
}


}

/// @nodoc


class WalikelasSuccess implements WalikelasState {
  const WalikelasSuccess({required final  List<Walikelas> walikelas, required this.currentPage, required this.lastPage, required this.hasReachedMax, required this.isLoadingMore}): _walikelas = walikelas;
  

 final  List<Walikelas> _walikelas;
 List<Walikelas> get walikelas {
  if (_walikelas is EqualUnmodifiableListView) return _walikelas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_walikelas);
}

 final  int currentPage;
 final  int lastPage;
 final  bool hasReachedMax;
 final  bool isLoadingMore;

/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalikelasSuccessCopyWith<WalikelasSuccess> get copyWith => _$WalikelasSuccessCopyWithImpl<WalikelasSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasSuccess&&const DeepCollectionEquality().equals(other._walikelas, _walikelas)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_walikelas),currentPage,lastPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'WalikelasState.success(walikelas: $walikelas, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $WalikelasSuccessCopyWith<$Res> implements $WalikelasStateCopyWith<$Res> {
  factory $WalikelasSuccessCopyWith(WalikelasSuccess value, $Res Function(WalikelasSuccess) _then) = _$WalikelasSuccessCopyWithImpl;
@useResult
$Res call({
 List<Walikelas> walikelas, int currentPage, int lastPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$WalikelasSuccessCopyWithImpl<$Res>
    implements $WalikelasSuccessCopyWith<$Res> {
  _$WalikelasSuccessCopyWithImpl(this._self, this._then);

  final WalikelasSuccess _self;
  final $Res Function(WalikelasSuccess) _then;

/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walikelas = null,Object? currentPage = null,Object? lastPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(WalikelasSuccess(
walikelas: null == walikelas ? _self._walikelas : walikelas // ignore: cast_nullable_to_non_nullable
as List<Walikelas>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class WalikelasError implements WalikelasState {
  const WalikelasError(this.message);
  

 final  String message;

/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalikelasErrorCopyWith<WalikelasError> get copyWith => _$WalikelasErrorCopyWithImpl<WalikelasError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalikelasError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WalikelasState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $WalikelasErrorCopyWith<$Res> implements $WalikelasStateCopyWith<$Res> {
  factory $WalikelasErrorCopyWith(WalikelasError value, $Res Function(WalikelasError) _then) = _$WalikelasErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WalikelasErrorCopyWithImpl<$Res>
    implements $WalikelasErrorCopyWith<$Res> {
  _$WalikelasErrorCopyWithImpl(this._self, this._then);

  final WalikelasError _self;
  final $Res Function(WalikelasError) _then;

/// Create a copy of WalikelasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WalikelasError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
