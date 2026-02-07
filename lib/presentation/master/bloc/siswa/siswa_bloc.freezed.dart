// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'siswa_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SiswaEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaEvent()';
}


}

/// @nodoc
class $SiswaEventCopyWith<$Res>  {
$SiswaEventCopyWith(SiswaEvent _, $Res Function(SiswaEvent) __);
}


/// Adds pattern-matching-related methods to [SiswaEvent].
extension SiswaEventPatterns on SiswaEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _LoadMore value)?  loadMore,TResult Function( _AddSiswa value)?  addSiswa,TResult Function( _DeleteSiswa value)?  deleteSiswa,TResult Function( _UpdateSiswa value)?  updateSiswa,TResult Function( _SearchSiswa value)?  searchSiswa,TResult Function( _LoadSiswa value)?  loadSiswa,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddSiswa() when addSiswa != null:
return addSiswa(_that);case _DeleteSiswa() when deleteSiswa != null:
return deleteSiswa(_that);case _UpdateSiswa() when updateSiswa != null:
return updateSiswa(_that);case _SearchSiswa() when searchSiswa != null:
return searchSiswa(_that);case _LoadSiswa() when loadSiswa != null:
return loadSiswa(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _AddSiswa value)  addSiswa,required TResult Function( _DeleteSiswa value)  deleteSiswa,required TResult Function( _UpdateSiswa value)  updateSiswa,required TResult Function( _SearchSiswa value)  searchSiswa,required TResult Function( _LoadSiswa value)  loadSiswa,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _LoadMore():
return loadMore(_that);case _AddSiswa():
return addSiswa(_that);case _DeleteSiswa():
return deleteSiswa(_that);case _UpdateSiswa():
return updateSiswa(_that);case _SearchSiswa():
return searchSiswa(_that);case _LoadSiswa():
return loadSiswa(_that);case _Refresh():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _AddSiswa value)?  addSiswa,TResult? Function( _DeleteSiswa value)?  deleteSiswa,TResult? Function( _UpdateSiswa value)?  updateSiswa,TResult? Function( _SearchSiswa value)?  searchSiswa,TResult? Function( _LoadSiswa value)?  loadSiswa,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddSiswa() when addSiswa != null:
return addSiswa(_that);case _DeleteSiswa() when deleteSiswa != null:
return deleteSiswa(_that);case _UpdateSiswa() when updateSiswa != null:
return updateSiswa(_that);case _SearchSiswa() when searchSiswa != null:
return searchSiswa(_that);case _LoadSiswa() when loadSiswa != null:
return loadSiswa(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? search)?  fetch,TResult Function()?  loadMore,TResult Function( SiswaRequestModel siswa)?  addSiswa,TResult Function( int id)?  deleteSiswa,TResult Function( Siswa siswa)?  updateSiswa,TResult Function( String query)?  searchSiswa,TResult Function()?  loadSiswa,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddSiswa() when addSiswa != null:
return addSiswa(_that.siswa);case _DeleteSiswa() when deleteSiswa != null:
return deleteSiswa(_that.id);case _UpdateSiswa() when updateSiswa != null:
return updateSiswa(_that.siswa);case _SearchSiswa() when searchSiswa != null:
return searchSiswa(_that.query);case _LoadSiswa() when loadSiswa != null:
return loadSiswa();case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? search)  fetch,required TResult Function()  loadMore,required TResult Function( SiswaRequestModel siswa)  addSiswa,required TResult Function( int id)  deleteSiswa,required TResult Function( Siswa siswa)  updateSiswa,required TResult Function( String query)  searchSiswa,required TResult Function()  loadSiswa,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch(_that.search);case _LoadMore():
return loadMore();case _AddSiswa():
return addSiswa(_that.siswa);case _DeleteSiswa():
return deleteSiswa(_that.id);case _UpdateSiswa():
return updateSiswa(_that.siswa);case _SearchSiswa():
return searchSiswa(_that.query);case _LoadSiswa():
return loadSiswa();case _Refresh():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? search)?  fetch,TResult? Function()?  loadMore,TResult? Function( SiswaRequestModel siswa)?  addSiswa,TResult? Function( int id)?  deleteSiswa,TResult? Function( Siswa siswa)?  updateSiswa,TResult? Function( String query)?  searchSiswa,TResult? Function()?  loadSiswa,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddSiswa() when addSiswa != null:
return addSiswa(_that.siswa);case _DeleteSiswa() when deleteSiswa != null:
return deleteSiswa(_that.id);case _UpdateSiswa() when updateSiswa != null:
return updateSiswa(_that.siswa);case _SearchSiswa() when searchSiswa != null:
return searchSiswa(_that.query);case _LoadSiswa() when loadSiswa != null:
return loadSiswa();case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SiswaEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaEvent.started()';
}


}




/// @nodoc


class _Fetch implements SiswaEvent {
  const _Fetch({this.search});
  

 final  String? search;

/// Create a copy of SiswaEvent
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
  return 'SiswaEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $SiswaEventCopyWith<$Res> {
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

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(_Fetch(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadMore implements SiswaEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaEvent.loadMore()';
}


}




/// @nodoc


class _AddSiswa implements SiswaEvent {
  const _AddSiswa(this.siswa);
  

 final  SiswaRequestModel siswa;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddSiswaCopyWith<_AddSiswa> get copyWith => __$AddSiswaCopyWithImpl<_AddSiswa>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddSiswa&&(identical(other.siswa, siswa) || other.siswa == siswa));
}


@override
int get hashCode => Object.hash(runtimeType,siswa);

@override
String toString() {
  return 'SiswaEvent.addSiswa(siswa: $siswa)';
}


}

/// @nodoc
abstract mixin class _$AddSiswaCopyWith<$Res> implements $SiswaEventCopyWith<$Res> {
  factory _$AddSiswaCopyWith(_AddSiswa value, $Res Function(_AddSiswa) _then) = __$AddSiswaCopyWithImpl;
@useResult
$Res call({
 SiswaRequestModel siswa
});




}
/// @nodoc
class __$AddSiswaCopyWithImpl<$Res>
    implements _$AddSiswaCopyWith<$Res> {
  __$AddSiswaCopyWithImpl(this._self, this._then);

  final _AddSiswa _self;
  final $Res Function(_AddSiswa) _then;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? siswa = null,}) {
  return _then(_AddSiswa(
null == siswa ? _self.siswa : siswa // ignore: cast_nullable_to_non_nullable
as SiswaRequestModel,
  ));
}


}

/// @nodoc


class _DeleteSiswa implements SiswaEvent {
  const _DeleteSiswa(this.id);
  

 final  int id;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSiswaCopyWith<_DeleteSiswa> get copyWith => __$DeleteSiswaCopyWithImpl<_DeleteSiswa>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSiswa&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SiswaEvent.deleteSiswa(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteSiswaCopyWith<$Res> implements $SiswaEventCopyWith<$Res> {
  factory _$DeleteSiswaCopyWith(_DeleteSiswa value, $Res Function(_DeleteSiswa) _then) = __$DeleteSiswaCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteSiswaCopyWithImpl<$Res>
    implements _$DeleteSiswaCopyWith<$Res> {
  __$DeleteSiswaCopyWithImpl(this._self, this._then);

  final _DeleteSiswa _self;
  final $Res Function(_DeleteSiswa) _then;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteSiswa(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateSiswa implements SiswaEvent {
  const _UpdateSiswa(this.siswa);
  

 final  Siswa siswa;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSiswaCopyWith<_UpdateSiswa> get copyWith => __$UpdateSiswaCopyWithImpl<_UpdateSiswa>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSiswa&&(identical(other.siswa, siswa) || other.siswa == siswa));
}


@override
int get hashCode => Object.hash(runtimeType,siswa);

@override
String toString() {
  return 'SiswaEvent.updateSiswa(siswa: $siswa)';
}


}

/// @nodoc
abstract mixin class _$UpdateSiswaCopyWith<$Res> implements $SiswaEventCopyWith<$Res> {
  factory _$UpdateSiswaCopyWith(_UpdateSiswa value, $Res Function(_UpdateSiswa) _then) = __$UpdateSiswaCopyWithImpl;
@useResult
$Res call({
 Siswa siswa
});




}
/// @nodoc
class __$UpdateSiswaCopyWithImpl<$Res>
    implements _$UpdateSiswaCopyWith<$Res> {
  __$UpdateSiswaCopyWithImpl(this._self, this._then);

  final _UpdateSiswa _self;
  final $Res Function(_UpdateSiswa) _then;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? siswa = null,}) {
  return _then(_UpdateSiswa(
null == siswa ? _self.siswa : siswa // ignore: cast_nullable_to_non_nullable
as Siswa,
  ));
}


}

/// @nodoc


class _SearchSiswa implements SiswaEvent {
  const _SearchSiswa(this.query);
  

 final  String query;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchSiswaCopyWith<_SearchSiswa> get copyWith => __$SearchSiswaCopyWithImpl<_SearchSiswa>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchSiswa&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SiswaEvent.searchSiswa(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchSiswaCopyWith<$Res> implements $SiswaEventCopyWith<$Res> {
  factory _$SearchSiswaCopyWith(_SearchSiswa value, $Res Function(_SearchSiswa) _then) = __$SearchSiswaCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchSiswaCopyWithImpl<$Res>
    implements _$SearchSiswaCopyWith<$Res> {
  __$SearchSiswaCopyWithImpl(this._self, this._then);

  final _SearchSiswa _self;
  final $Res Function(_SearchSiswa) _then;

/// Create a copy of SiswaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchSiswa(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadSiswa implements SiswaEvent {
  const _LoadSiswa();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadSiswa);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaEvent.loadSiswa()';
}


}




/// @nodoc


class _Refresh implements SiswaEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaEvent.refresh()';
}


}




/// @nodoc
mixin _$SiswaState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaState()';
}


}

/// @nodoc
class $SiswaStateCopyWith<$Res>  {
$SiswaStateCopyWith(SiswaState _, $Res Function(SiswaState) __);
}


/// Adds pattern-matching-related methods to [SiswaState].
extension SiswaStatePatterns on SiswaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SiswaInitial value)?  initial,TResult Function( SiswaLoading value)?  loading,TResult Function( SiswaLoaded value)?  loaded,TResult Function( SiswaSukses value)?  sukses,TResult Function( SiswaSuccess value)?  success,TResult Function( SiswaError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SiswaInitial() when initial != null:
return initial(_that);case SiswaLoading() when loading != null:
return loading(_that);case SiswaLoaded() when loaded != null:
return loaded(_that);case SiswaSukses() when sukses != null:
return sukses(_that);case SiswaSuccess() when success != null:
return success(_that);case SiswaError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SiswaInitial value)  initial,required TResult Function( SiswaLoading value)  loading,required TResult Function( SiswaLoaded value)  loaded,required TResult Function( SiswaSukses value)  sukses,required TResult Function( SiswaSuccess value)  success,required TResult Function( SiswaError value)  error,}){
final _that = this;
switch (_that) {
case SiswaInitial():
return initial(_that);case SiswaLoading():
return loading(_that);case SiswaLoaded():
return loaded(_that);case SiswaSukses():
return sukses(_that);case SiswaSuccess():
return success(_that);case SiswaError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SiswaInitial value)?  initial,TResult? Function( SiswaLoading value)?  loading,TResult? Function( SiswaLoaded value)?  loaded,TResult? Function( SiswaSukses value)?  sukses,TResult? Function( SiswaSuccess value)?  success,TResult? Function( SiswaError value)?  error,}){
final _that = this;
switch (_that) {
case SiswaInitial() when initial != null:
return initial(_that);case SiswaLoading() when loading != null:
return loading(_that);case SiswaLoaded() when loaded != null:
return loaded(_that);case SiswaSukses() when sukses != null:
return sukses(_that);case SiswaSuccess() when success != null:
return success(_that);case SiswaError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Siswa> siswa)?  loaded,TResult Function( List<Siswa> siswa)?  sukses,TResult Function( List<Siswa> siswa,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SiswaInitial() when initial != null:
return initial();case SiswaLoading() when loading != null:
return loading();case SiswaLoaded() when loaded != null:
return loaded(_that.siswa);case SiswaSukses() when sukses != null:
return sukses(_that.siswa);case SiswaSuccess() when success != null:
return success(_that.siswa,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case SiswaError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Siswa> siswa)  loaded,required TResult Function( List<Siswa> siswa)  sukses,required TResult Function( List<Siswa> siswa,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case SiswaInitial():
return initial();case SiswaLoading():
return loading();case SiswaLoaded():
return loaded(_that.siswa);case SiswaSukses():
return sukses(_that.siswa);case SiswaSuccess():
return success(_that.siswa,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case SiswaError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Siswa> siswa)?  loaded,TResult? Function( List<Siswa> siswa)?  sukses,TResult? Function( List<Siswa> siswa,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case SiswaInitial() when initial != null:
return initial();case SiswaLoading() when loading != null:
return loading();case SiswaLoaded() when loaded != null:
return loaded(_that.siswa);case SiswaSukses() when sukses != null:
return sukses(_that.siswa);case SiswaSuccess() when success != null:
return success(_that.siswa,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case SiswaError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class SiswaInitial implements SiswaState {
  const SiswaInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaState.initial()';
}


}




/// @nodoc


class SiswaLoading implements SiswaState {
  const SiswaLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SiswaState.loading()';
}


}




/// @nodoc


class SiswaLoaded implements SiswaState {
  const SiswaLoaded(final  List<Siswa> siswa): _siswa = siswa;
  

 final  List<Siswa> _siswa;
 List<Siswa> get siswa {
  if (_siswa is EqualUnmodifiableListView) return _siswa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_siswa);
}


/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiswaLoadedCopyWith<SiswaLoaded> get copyWith => _$SiswaLoadedCopyWithImpl<SiswaLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaLoaded&&const DeepCollectionEquality().equals(other._siswa, _siswa));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_siswa));

@override
String toString() {
  return 'SiswaState.loaded(siswa: $siswa)';
}


}

/// @nodoc
abstract mixin class $SiswaLoadedCopyWith<$Res> implements $SiswaStateCopyWith<$Res> {
  factory $SiswaLoadedCopyWith(SiswaLoaded value, $Res Function(SiswaLoaded) _then) = _$SiswaLoadedCopyWithImpl;
@useResult
$Res call({
 List<Siswa> siswa
});




}
/// @nodoc
class _$SiswaLoadedCopyWithImpl<$Res>
    implements $SiswaLoadedCopyWith<$Res> {
  _$SiswaLoadedCopyWithImpl(this._self, this._then);

  final SiswaLoaded _self;
  final $Res Function(SiswaLoaded) _then;

/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? siswa = null,}) {
  return _then(SiswaLoaded(
null == siswa ? _self._siswa : siswa // ignore: cast_nullable_to_non_nullable
as List<Siswa>,
  ));
}


}

/// @nodoc


class SiswaSukses implements SiswaState {
  const SiswaSukses(final  List<Siswa> siswa): _siswa = siswa;
  

 final  List<Siswa> _siswa;
 List<Siswa> get siswa {
  if (_siswa is EqualUnmodifiableListView) return _siswa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_siswa);
}


/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiswaSuksesCopyWith<SiswaSukses> get copyWith => _$SiswaSuksesCopyWithImpl<SiswaSukses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaSukses&&const DeepCollectionEquality().equals(other._siswa, _siswa));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_siswa));

@override
String toString() {
  return 'SiswaState.sukses(siswa: $siswa)';
}


}

/// @nodoc
abstract mixin class $SiswaSuksesCopyWith<$Res> implements $SiswaStateCopyWith<$Res> {
  factory $SiswaSuksesCopyWith(SiswaSukses value, $Res Function(SiswaSukses) _then) = _$SiswaSuksesCopyWithImpl;
@useResult
$Res call({
 List<Siswa> siswa
});




}
/// @nodoc
class _$SiswaSuksesCopyWithImpl<$Res>
    implements $SiswaSuksesCopyWith<$Res> {
  _$SiswaSuksesCopyWithImpl(this._self, this._then);

  final SiswaSukses _self;
  final $Res Function(SiswaSukses) _then;

/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? siswa = null,}) {
  return _then(SiswaSukses(
null == siswa ? _self._siswa : siswa // ignore: cast_nullable_to_non_nullable
as List<Siswa>,
  ));
}


}

/// @nodoc


class SiswaSuccess implements SiswaState {
  const SiswaSuccess({required final  List<Siswa> siswa, required this.currentPage, required this.lastPage, required this.hasReachedMax, required this.isLoadingMore}): _siswa = siswa;
  

 final  List<Siswa> _siswa;
 List<Siswa> get siswa {
  if (_siswa is EqualUnmodifiableListView) return _siswa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_siswa);
}

 final  int currentPage;
 final  int lastPage;
 final  bool hasReachedMax;
 final  bool isLoadingMore;

/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiswaSuccessCopyWith<SiswaSuccess> get copyWith => _$SiswaSuccessCopyWithImpl<SiswaSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaSuccess&&const DeepCollectionEquality().equals(other._siswa, _siswa)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_siswa),currentPage,lastPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'SiswaState.success(siswa: $siswa, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $SiswaSuccessCopyWith<$Res> implements $SiswaStateCopyWith<$Res> {
  factory $SiswaSuccessCopyWith(SiswaSuccess value, $Res Function(SiswaSuccess) _then) = _$SiswaSuccessCopyWithImpl;
@useResult
$Res call({
 List<Siswa> siswa, int currentPage, int lastPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$SiswaSuccessCopyWithImpl<$Res>
    implements $SiswaSuccessCopyWith<$Res> {
  _$SiswaSuccessCopyWithImpl(this._self, this._then);

  final SiswaSuccess _self;
  final $Res Function(SiswaSuccess) _then;

/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? siswa = null,Object? currentPage = null,Object? lastPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(SiswaSuccess(
siswa: null == siswa ? _self._siswa : siswa // ignore: cast_nullable_to_non_nullable
as List<Siswa>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SiswaError implements SiswaState {
  const SiswaError(this.message);
  

 final  String message;

/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiswaErrorCopyWith<SiswaError> get copyWith => _$SiswaErrorCopyWithImpl<SiswaError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiswaError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SiswaState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SiswaErrorCopyWith<$Res> implements $SiswaStateCopyWith<$Res> {
  factory $SiswaErrorCopyWith(SiswaError value, $Res Function(SiswaError) _then) = _$SiswaErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SiswaErrorCopyWithImpl<$Res>
    implements $SiswaErrorCopyWith<$Res> {
  _$SiswaErrorCopyWithImpl(this._self, this._then);

  final SiswaError _self;
  final $Res Function(SiswaError) _then;

/// Create a copy of SiswaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SiswaError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
