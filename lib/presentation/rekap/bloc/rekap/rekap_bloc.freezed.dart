// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rekap_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RekapEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapEvent()';
}


}

/// @nodoc
class $RekapEventCopyWith<$Res>  {
$RekapEventCopyWith(RekapEvent _, $Res Function(RekapEvent) __);
}


/// Adds pattern-matching-related methods to [RekapEvent].
extension RekapEventPatterns on RekapEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _LoadMore value)?  loadMore,TResult Function( _DeleteRekap value)?  deleteRekap,TResult Function( _UpdateRekap value)?  updateRekap,TResult Function( _SearchRekap value)?  searchRekap,TResult Function( _LoadRekap value)?  loadRekap,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _DeleteRekap() when deleteRekap != null:
return deleteRekap(_that);case _UpdateRekap() when updateRekap != null:
return updateRekap(_that);case _SearchRekap() when searchRekap != null:
return searchRekap(_that);case _LoadRekap() when loadRekap != null:
return loadRekap(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _DeleteRekap value)  deleteRekap,required TResult Function( _UpdateRekap value)  updateRekap,required TResult Function( _SearchRekap value)  searchRekap,required TResult Function( _LoadRekap value)  loadRekap,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _LoadMore():
return loadMore(_that);case _DeleteRekap():
return deleteRekap(_that);case _UpdateRekap():
return updateRekap(_that);case _SearchRekap():
return searchRekap(_that);case _LoadRekap():
return loadRekap(_that);case _Refresh():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _DeleteRekap value)?  deleteRekap,TResult? Function( _UpdateRekap value)?  updateRekap,TResult? Function( _SearchRekap value)?  searchRekap,TResult? Function( _LoadRekap value)?  loadRekap,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _DeleteRekap() when deleteRekap != null:
return deleteRekap(_that);case _UpdateRekap() when updateRekap != null:
return updateRekap(_that);case _SearchRekap() when searchRekap != null:
return searchRekap(_that);case _LoadRekap() when loadRekap != null:
return loadRekap(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? search)?  fetch,TResult Function()?  loadMore,TResult Function( int id)?  deleteRekap,TResult Function( RekapSingle rekap)?  updateRekap,TResult Function( String query)?  searchRekap,TResult Function()?  loadRekap,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _DeleteRekap() when deleteRekap != null:
return deleteRekap(_that.id);case _UpdateRekap() when updateRekap != null:
return updateRekap(_that.rekap);case _SearchRekap() when searchRekap != null:
return searchRekap(_that.query);case _LoadRekap() when loadRekap != null:
return loadRekap();case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? search)  fetch,required TResult Function()  loadMore,required TResult Function( int id)  deleteRekap,required TResult Function( RekapSingle rekap)  updateRekap,required TResult Function( String query)  searchRekap,required TResult Function()  loadRekap,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch(_that.search);case _LoadMore():
return loadMore();case _DeleteRekap():
return deleteRekap(_that.id);case _UpdateRekap():
return updateRekap(_that.rekap);case _SearchRekap():
return searchRekap(_that.query);case _LoadRekap():
return loadRekap();case _Refresh():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? search)?  fetch,TResult? Function()?  loadMore,TResult? Function( int id)?  deleteRekap,TResult? Function( RekapSingle rekap)?  updateRekap,TResult? Function( String query)?  searchRekap,TResult? Function()?  loadRekap,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _DeleteRekap() when deleteRekap != null:
return deleteRekap(_that.id);case _UpdateRekap() when updateRekap != null:
return updateRekap(_that.rekap);case _SearchRekap() when searchRekap != null:
return searchRekap(_that.query);case _LoadRekap() when loadRekap != null:
return loadRekap();case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RekapEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapEvent.started()';
}


}




/// @nodoc


class _Fetch implements RekapEvent {
  const _Fetch({this.search});
  

 final  String? search;

/// Create a copy of RekapEvent
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
  return 'RekapEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $RekapEventCopyWith<$Res> {
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

/// Create a copy of RekapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(_Fetch(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadMore implements RekapEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapEvent.loadMore()';
}


}




/// @nodoc


class _DeleteRekap implements RekapEvent {
  const _DeleteRekap(this.id);
  

 final  int id;

/// Create a copy of RekapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteRekapCopyWith<_DeleteRekap> get copyWith => __$DeleteRekapCopyWithImpl<_DeleteRekap>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteRekap&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RekapEvent.deleteRekap(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteRekapCopyWith<$Res> implements $RekapEventCopyWith<$Res> {
  factory _$DeleteRekapCopyWith(_DeleteRekap value, $Res Function(_DeleteRekap) _then) = __$DeleteRekapCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteRekapCopyWithImpl<$Res>
    implements _$DeleteRekapCopyWith<$Res> {
  __$DeleteRekapCopyWithImpl(this._self, this._then);

  final _DeleteRekap _self;
  final $Res Function(_DeleteRekap) _then;

/// Create a copy of RekapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteRekap(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateRekap implements RekapEvent {
  const _UpdateRekap(this.rekap);
  

 final  RekapSingle rekap;

/// Create a copy of RekapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateRekapCopyWith<_UpdateRekap> get copyWith => __$UpdateRekapCopyWithImpl<_UpdateRekap>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateRekap&&(identical(other.rekap, rekap) || other.rekap == rekap));
}


@override
int get hashCode => Object.hash(runtimeType,rekap);

@override
String toString() {
  return 'RekapEvent.updateRekap(rekap: $rekap)';
}


}

/// @nodoc
abstract mixin class _$UpdateRekapCopyWith<$Res> implements $RekapEventCopyWith<$Res> {
  factory _$UpdateRekapCopyWith(_UpdateRekap value, $Res Function(_UpdateRekap) _then) = __$UpdateRekapCopyWithImpl;
@useResult
$Res call({
 RekapSingle rekap
});




}
/// @nodoc
class __$UpdateRekapCopyWithImpl<$Res>
    implements _$UpdateRekapCopyWith<$Res> {
  __$UpdateRekapCopyWithImpl(this._self, this._then);

  final _UpdateRekap _self;
  final $Res Function(_UpdateRekap) _then;

/// Create a copy of RekapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekap = null,}) {
  return _then(_UpdateRekap(
null == rekap ? _self.rekap : rekap // ignore: cast_nullable_to_non_nullable
as RekapSingle,
  ));
}


}

/// @nodoc


class _SearchRekap implements RekapEvent {
  const _SearchRekap(this.query);
  

 final  String query;

/// Create a copy of RekapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchRekapCopyWith<_SearchRekap> get copyWith => __$SearchRekapCopyWithImpl<_SearchRekap>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchRekap&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'RekapEvent.searchRekap(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchRekapCopyWith<$Res> implements $RekapEventCopyWith<$Res> {
  factory _$SearchRekapCopyWith(_SearchRekap value, $Res Function(_SearchRekap) _then) = __$SearchRekapCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchRekapCopyWithImpl<$Res>
    implements _$SearchRekapCopyWith<$Res> {
  __$SearchRekapCopyWithImpl(this._self, this._then);

  final _SearchRekap _self;
  final $Res Function(_SearchRekap) _then;

/// Create a copy of RekapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchRekap(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadRekap implements RekapEvent {
  const _LoadRekap();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadRekap);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapEvent.loadRekap()';
}


}




/// @nodoc


class _Refresh implements RekapEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapEvent.refresh()';
}


}




/// @nodoc
mixin _$RekapState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapState()';
}


}

/// @nodoc
class $RekapStateCopyWith<$Res>  {
$RekapStateCopyWith(RekapState _, $Res Function(RekapState) __);
}


/// Adds pattern-matching-related methods to [RekapState].
extension RekapStatePatterns on RekapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RekapInitial value)?  initial,TResult Function( RekapLoading value)?  loading,TResult Function( RekapLoaded value)?  loaded,TResult Function( RekapSukses value)?  sukses,TResult Function( RekapSuccess value)?  success,TResult Function( RekapError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RekapInitial() when initial != null:
return initial(_that);case RekapLoading() when loading != null:
return loading(_that);case RekapLoaded() when loaded != null:
return loaded(_that);case RekapSukses() when sukses != null:
return sukses(_that);case RekapSuccess() when success != null:
return success(_that);case RekapError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RekapInitial value)  initial,required TResult Function( RekapLoading value)  loading,required TResult Function( RekapLoaded value)  loaded,required TResult Function( RekapSukses value)  sukses,required TResult Function( RekapSuccess value)  success,required TResult Function( RekapError value)  error,}){
final _that = this;
switch (_that) {
case RekapInitial():
return initial(_that);case RekapLoading():
return loading(_that);case RekapLoaded():
return loaded(_that);case RekapSukses():
return sukses(_that);case RekapSuccess():
return success(_that);case RekapError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RekapInitial value)?  initial,TResult? Function( RekapLoading value)?  loading,TResult? Function( RekapLoaded value)?  loaded,TResult? Function( RekapSukses value)?  sukses,TResult? Function( RekapSuccess value)?  success,TResult? Function( RekapError value)?  error,}){
final _that = this;
switch (_that) {
case RekapInitial() when initial != null:
return initial(_that);case RekapLoading() when loading != null:
return loading(_that);case RekapLoaded() when loaded != null:
return loaded(_that);case RekapSukses() when sukses != null:
return sukses(_that);case RekapSuccess() when success != null:
return success(_that);case RekapError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<RekapSingle> rekap)?  loaded,TResult Function( List<RekapSingle> rekap)?  sukses,TResult Function( List<RekapSingle> rekap,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RekapInitial() when initial != null:
return initial();case RekapLoading() when loading != null:
return loading();case RekapLoaded() when loaded != null:
return loaded(_that.rekap);case RekapSukses() when sukses != null:
return sukses(_that.rekap);case RekapSuccess() when success != null:
return success(_that.rekap,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case RekapError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<RekapSingle> rekap)  loaded,required TResult Function( List<RekapSingle> rekap)  sukses,required TResult Function( List<RekapSingle> rekap,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case RekapInitial():
return initial();case RekapLoading():
return loading();case RekapLoaded():
return loaded(_that.rekap);case RekapSukses():
return sukses(_that.rekap);case RekapSuccess():
return success(_that.rekap,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case RekapError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<RekapSingle> rekap)?  loaded,TResult? Function( List<RekapSingle> rekap)?  sukses,TResult? Function( List<RekapSingle> rekap,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case RekapInitial() when initial != null:
return initial();case RekapLoading() when loading != null:
return loading();case RekapLoaded() when loaded != null:
return loaded(_that.rekap);case RekapSukses() when sukses != null:
return sukses(_that.rekap);case RekapSuccess() when success != null:
return success(_that.rekap,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case RekapError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class RekapInitial implements RekapState {
  const RekapInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapState.initial()';
}


}




/// @nodoc


class RekapLoading implements RekapState {
  const RekapLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapState.loading()';
}


}




/// @nodoc


class RekapLoaded implements RekapState {
  const RekapLoaded(final  List<RekapSingle> rekap): _rekap = rekap;
  

 final  List<RekapSingle> _rekap;
 List<RekapSingle> get rekap {
  if (_rekap is EqualUnmodifiableListView) return _rekap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rekap);
}


/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapLoadedCopyWith<RekapLoaded> get copyWith => _$RekapLoadedCopyWithImpl<RekapLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapLoaded&&const DeepCollectionEquality().equals(other._rekap, _rekap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rekap));

@override
String toString() {
  return 'RekapState.loaded(rekap: $rekap)';
}


}

/// @nodoc
abstract mixin class $RekapLoadedCopyWith<$Res> implements $RekapStateCopyWith<$Res> {
  factory $RekapLoadedCopyWith(RekapLoaded value, $Res Function(RekapLoaded) _then) = _$RekapLoadedCopyWithImpl;
@useResult
$Res call({
 List<RekapSingle> rekap
});




}
/// @nodoc
class _$RekapLoadedCopyWithImpl<$Res>
    implements $RekapLoadedCopyWith<$Res> {
  _$RekapLoadedCopyWithImpl(this._self, this._then);

  final RekapLoaded _self;
  final $Res Function(RekapLoaded) _then;

/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekap = null,}) {
  return _then(RekapLoaded(
null == rekap ? _self._rekap : rekap // ignore: cast_nullable_to_non_nullable
as List<RekapSingle>,
  ));
}


}

/// @nodoc


class RekapSukses implements RekapState {
  const RekapSukses(final  List<RekapSingle> rekap): _rekap = rekap;
  

 final  List<RekapSingle> _rekap;
 List<RekapSingle> get rekap {
  if (_rekap is EqualUnmodifiableListView) return _rekap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rekap);
}


/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapSuksesCopyWith<RekapSukses> get copyWith => _$RekapSuksesCopyWithImpl<RekapSukses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapSukses&&const DeepCollectionEquality().equals(other._rekap, _rekap));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rekap));

@override
String toString() {
  return 'RekapState.sukses(rekap: $rekap)';
}


}

/// @nodoc
abstract mixin class $RekapSuksesCopyWith<$Res> implements $RekapStateCopyWith<$Res> {
  factory $RekapSuksesCopyWith(RekapSukses value, $Res Function(RekapSukses) _then) = _$RekapSuksesCopyWithImpl;
@useResult
$Res call({
 List<RekapSingle> rekap
});




}
/// @nodoc
class _$RekapSuksesCopyWithImpl<$Res>
    implements $RekapSuksesCopyWith<$Res> {
  _$RekapSuksesCopyWithImpl(this._self, this._then);

  final RekapSukses _self;
  final $Res Function(RekapSukses) _then;

/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekap = null,}) {
  return _then(RekapSukses(
null == rekap ? _self._rekap : rekap // ignore: cast_nullable_to_non_nullable
as List<RekapSingle>,
  ));
}


}

/// @nodoc


class RekapSuccess implements RekapState {
  const RekapSuccess({required final  List<RekapSingle> rekap, required this.currentPage, required this.lastPage, required this.hasReachedMax, required this.isLoadingMore}): _rekap = rekap;
  

 final  List<RekapSingle> _rekap;
 List<RekapSingle> get rekap {
  if (_rekap is EqualUnmodifiableListView) return _rekap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rekap);
}

 final  int currentPage;
 final  int lastPage;
 final  bool hasReachedMax;
 final  bool isLoadingMore;

/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapSuccessCopyWith<RekapSuccess> get copyWith => _$RekapSuccessCopyWithImpl<RekapSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapSuccess&&const DeepCollectionEquality().equals(other._rekap, _rekap)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rekap),currentPage,lastPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'RekapState.success(rekap: $rekap, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $RekapSuccessCopyWith<$Res> implements $RekapStateCopyWith<$Res> {
  factory $RekapSuccessCopyWith(RekapSuccess value, $Res Function(RekapSuccess) _then) = _$RekapSuccessCopyWithImpl;
@useResult
$Res call({
 List<RekapSingle> rekap, int currentPage, int lastPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$RekapSuccessCopyWithImpl<$Res>
    implements $RekapSuccessCopyWith<$Res> {
  _$RekapSuccessCopyWithImpl(this._self, this._then);

  final RekapSuccess _self;
  final $Res Function(RekapSuccess) _then;

/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekap = null,Object? currentPage = null,Object? lastPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(RekapSuccess(
rekap: null == rekap ? _self._rekap : rekap // ignore: cast_nullable_to_non_nullable
as List<RekapSingle>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RekapError implements RekapState {
  const RekapError(this.message);
  

 final  String message;

/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapErrorCopyWith<RekapError> get copyWith => _$RekapErrorCopyWithImpl<RekapError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RekapState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $RekapErrorCopyWith<$Res> implements $RekapStateCopyWith<$Res> {
  factory $RekapErrorCopyWith(RekapError value, $Res Function(RekapError) _then) = _$RekapErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RekapErrorCopyWithImpl<$Res>
    implements $RekapErrorCopyWith<$Res> {
  _$RekapErrorCopyWithImpl(this._self, this._then);

  final RekapError _self;
  final $Res Function(RekapError) _then;

/// Create a copy of RekapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(RekapError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
