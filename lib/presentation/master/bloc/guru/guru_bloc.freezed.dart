// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guru_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GuruEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruEvent()';
}


}

/// @nodoc
class $GuruEventCopyWith<$Res>  {
$GuruEventCopyWith(GuruEvent _, $Res Function(GuruEvent) __);
}


/// Adds pattern-matching-related methods to [GuruEvent].
extension GuruEventPatterns on GuruEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ListGuru value)?  listGuru,TResult Function( _Fetch value)?  fetch,TResult Function( _LoadMore value)?  loadMore,TResult Function( _AddGuru value)?  addGuru,TResult Function( _DeleteGuru value)?  deleteGuru,TResult Function( _UpdateGuru value)?  updateGuru,TResult Function( _SearchGuru value)?  searchGuru,TResult Function( _LoadGuru value)?  loadGuru,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ListGuru() when listGuru != null:
return listGuru(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddGuru() when addGuru != null:
return addGuru(_that);case _DeleteGuru() when deleteGuru != null:
return deleteGuru(_that);case _UpdateGuru() when updateGuru != null:
return updateGuru(_that);case _SearchGuru() when searchGuru != null:
return searchGuru(_that);case _LoadGuru() when loadGuru != null:
return loadGuru(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ListGuru value)  listGuru,required TResult Function( _Fetch value)  fetch,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _AddGuru value)  addGuru,required TResult Function( _DeleteGuru value)  deleteGuru,required TResult Function( _UpdateGuru value)  updateGuru,required TResult Function( _SearchGuru value)  searchGuru,required TResult Function( _LoadGuru value)  loadGuru,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ListGuru():
return listGuru(_that);case _Fetch():
return fetch(_that);case _LoadMore():
return loadMore(_that);case _AddGuru():
return addGuru(_that);case _DeleteGuru():
return deleteGuru(_that);case _UpdateGuru():
return updateGuru(_that);case _SearchGuru():
return searchGuru(_that);case _LoadGuru():
return loadGuru(_that);case _Refresh():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ListGuru value)?  listGuru,TResult? Function( _Fetch value)?  fetch,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _AddGuru value)?  addGuru,TResult? Function( _DeleteGuru value)?  deleteGuru,TResult? Function( _UpdateGuru value)?  updateGuru,TResult? Function( _SearchGuru value)?  searchGuru,TResult? Function( _LoadGuru value)?  loadGuru,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ListGuru() when listGuru != null:
return listGuru(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddGuru() when addGuru != null:
return addGuru(_that);case _DeleteGuru() when deleteGuru != null:
return deleteGuru(_that);case _UpdateGuru() when updateGuru != null:
return updateGuru(_that);case _SearchGuru() when searchGuru != null:
return searchGuru(_that);case _LoadGuru() when loadGuru != null:
return loadGuru(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String search)?  listGuru,TResult Function( String? search)?  fetch,TResult Function()?  loadMore,TResult Function( GuruRequestModel guru)?  addGuru,TResult Function( int id)?  deleteGuru,TResult Function( Guru guru)?  updateGuru,TResult Function( String query)?  searchGuru,TResult Function()?  loadGuru,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ListGuru() when listGuru != null:
return listGuru(_that.search);case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddGuru() when addGuru != null:
return addGuru(_that.guru);case _DeleteGuru() when deleteGuru != null:
return deleteGuru(_that.id);case _UpdateGuru() when updateGuru != null:
return updateGuru(_that.guru);case _SearchGuru() when searchGuru != null:
return searchGuru(_that.query);case _LoadGuru() when loadGuru != null:
return loadGuru();case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String search)  listGuru,required TResult Function( String? search)  fetch,required TResult Function()  loadMore,required TResult Function( GuruRequestModel guru)  addGuru,required TResult Function( int id)  deleteGuru,required TResult Function( Guru guru)  updateGuru,required TResult Function( String query)  searchGuru,required TResult Function()  loadGuru,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _ListGuru():
return listGuru(_that.search);case _Fetch():
return fetch(_that.search);case _LoadMore():
return loadMore();case _AddGuru():
return addGuru(_that.guru);case _DeleteGuru():
return deleteGuru(_that.id);case _UpdateGuru():
return updateGuru(_that.guru);case _SearchGuru():
return searchGuru(_that.query);case _LoadGuru():
return loadGuru();case _Refresh():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String search)?  listGuru,TResult? Function( String? search)?  fetch,TResult? Function()?  loadMore,TResult? Function( GuruRequestModel guru)?  addGuru,TResult? Function( int id)?  deleteGuru,TResult? Function( Guru guru)?  updateGuru,TResult? Function( String query)?  searchGuru,TResult? Function()?  loadGuru,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ListGuru() when listGuru != null:
return listGuru(_that.search);case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddGuru() when addGuru != null:
return addGuru(_that.guru);case _DeleteGuru() when deleteGuru != null:
return deleteGuru(_that.id);case _UpdateGuru() when updateGuru != null:
return updateGuru(_that.guru);case _SearchGuru() when searchGuru != null:
return searchGuru(_that.query);case _LoadGuru() when loadGuru != null:
return loadGuru();case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements GuruEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruEvent.started()';
}


}




/// @nodoc


class _ListGuru implements GuruEvent {
  const _ListGuru(this.search);
  

 final  String search;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListGuruCopyWith<_ListGuru> get copyWith => __$ListGuruCopyWithImpl<_ListGuru>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListGuru&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,search);

@override
String toString() {
  return 'GuruEvent.listGuru(search: $search)';
}


}

/// @nodoc
abstract mixin class _$ListGuruCopyWith<$Res> implements $GuruEventCopyWith<$Res> {
  factory _$ListGuruCopyWith(_ListGuru value, $Res Function(_ListGuru) _then) = __$ListGuruCopyWithImpl;
@useResult
$Res call({
 String search
});




}
/// @nodoc
class __$ListGuruCopyWithImpl<$Res>
    implements _$ListGuruCopyWith<$Res> {
  __$ListGuruCopyWithImpl(this._self, this._then);

  final _ListGuru _self;
  final $Res Function(_ListGuru) _then;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = null,}) {
  return _then(_ListGuru(
null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Fetch implements GuruEvent {
  const _Fetch({this.search});
  

 final  String? search;

/// Create a copy of GuruEvent
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
  return 'GuruEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $GuruEventCopyWith<$Res> {
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

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(_Fetch(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadMore implements GuruEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruEvent.loadMore()';
}


}




/// @nodoc


class _AddGuru implements GuruEvent {
  const _AddGuru(this.guru);
  

 final  GuruRequestModel guru;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddGuruCopyWith<_AddGuru> get copyWith => __$AddGuruCopyWithImpl<_AddGuru>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddGuru&&(identical(other.guru, guru) || other.guru == guru));
}


@override
int get hashCode => Object.hash(runtimeType,guru);

@override
String toString() {
  return 'GuruEvent.addGuru(guru: $guru)';
}


}

/// @nodoc
abstract mixin class _$AddGuruCopyWith<$Res> implements $GuruEventCopyWith<$Res> {
  factory _$AddGuruCopyWith(_AddGuru value, $Res Function(_AddGuru) _then) = __$AddGuruCopyWithImpl;
@useResult
$Res call({
 GuruRequestModel guru
});




}
/// @nodoc
class __$AddGuruCopyWithImpl<$Res>
    implements _$AddGuruCopyWith<$Res> {
  __$AddGuruCopyWithImpl(this._self, this._then);

  final _AddGuru _self;
  final $Res Function(_AddGuru) _then;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? guru = null,}) {
  return _then(_AddGuru(
null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as GuruRequestModel,
  ));
}


}

/// @nodoc


class _DeleteGuru implements GuruEvent {
  const _DeleteGuru(this.id);
  

 final  int id;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteGuruCopyWith<_DeleteGuru> get copyWith => __$DeleteGuruCopyWithImpl<_DeleteGuru>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteGuru&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GuruEvent.deleteGuru(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteGuruCopyWith<$Res> implements $GuruEventCopyWith<$Res> {
  factory _$DeleteGuruCopyWith(_DeleteGuru value, $Res Function(_DeleteGuru) _then) = __$DeleteGuruCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteGuruCopyWithImpl<$Res>
    implements _$DeleteGuruCopyWith<$Res> {
  __$DeleteGuruCopyWithImpl(this._self, this._then);

  final _DeleteGuru _self;
  final $Res Function(_DeleteGuru) _then;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteGuru(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateGuru implements GuruEvent {
  const _UpdateGuru(this.guru);
  

 final  Guru guru;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateGuruCopyWith<_UpdateGuru> get copyWith => __$UpdateGuruCopyWithImpl<_UpdateGuru>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateGuru&&(identical(other.guru, guru) || other.guru == guru));
}


@override
int get hashCode => Object.hash(runtimeType,guru);

@override
String toString() {
  return 'GuruEvent.updateGuru(guru: $guru)';
}


}

/// @nodoc
abstract mixin class _$UpdateGuruCopyWith<$Res> implements $GuruEventCopyWith<$Res> {
  factory _$UpdateGuruCopyWith(_UpdateGuru value, $Res Function(_UpdateGuru) _then) = __$UpdateGuruCopyWithImpl;
@useResult
$Res call({
 Guru guru
});




}
/// @nodoc
class __$UpdateGuruCopyWithImpl<$Res>
    implements _$UpdateGuruCopyWith<$Res> {
  __$UpdateGuruCopyWithImpl(this._self, this._then);

  final _UpdateGuru _self;
  final $Res Function(_UpdateGuru) _then;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? guru = null,}) {
  return _then(_UpdateGuru(
null == guru ? _self.guru : guru // ignore: cast_nullable_to_non_nullable
as Guru,
  ));
}


}

/// @nodoc


class _SearchGuru implements GuruEvent {
  const _SearchGuru(this.query);
  

 final  String query;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchGuruCopyWith<_SearchGuru> get copyWith => __$SearchGuruCopyWithImpl<_SearchGuru>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchGuru&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'GuruEvent.searchGuru(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchGuruCopyWith<$Res> implements $GuruEventCopyWith<$Res> {
  factory _$SearchGuruCopyWith(_SearchGuru value, $Res Function(_SearchGuru) _then) = __$SearchGuruCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchGuruCopyWithImpl<$Res>
    implements _$SearchGuruCopyWith<$Res> {
  __$SearchGuruCopyWithImpl(this._self, this._then);

  final _SearchGuru _self;
  final $Res Function(_SearchGuru) _then;

/// Create a copy of GuruEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchGuru(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadGuru implements GuruEvent {
  const _LoadGuru();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadGuru);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruEvent.loadGuru()';
}


}




/// @nodoc


class _Refresh implements GuruEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruEvent.refresh()';
}


}




/// @nodoc
mixin _$GuruState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruState()';
}


}

/// @nodoc
class $GuruStateCopyWith<$Res>  {
$GuruStateCopyWith(GuruState _, $Res Function(GuruState) __);
}


/// Adds pattern-matching-related methods to [GuruState].
extension GuruStatePatterns on GuruState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GuruInitial value)?  initial,TResult Function( GuruLoading value)?  loading,TResult Function( GuruLoaded value)?  loaded,TResult Function( GuruSukses value)?  sukses,TResult Function( GuruSuccess value)?  success,TResult Function( GuruError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GuruInitial() when initial != null:
return initial(_that);case GuruLoading() when loading != null:
return loading(_that);case GuruLoaded() when loaded != null:
return loaded(_that);case GuruSukses() when sukses != null:
return sukses(_that);case GuruSuccess() when success != null:
return success(_that);case GuruError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GuruInitial value)  initial,required TResult Function( GuruLoading value)  loading,required TResult Function( GuruLoaded value)  loaded,required TResult Function( GuruSukses value)  sukses,required TResult Function( GuruSuccess value)  success,required TResult Function( GuruError value)  error,}){
final _that = this;
switch (_that) {
case GuruInitial():
return initial(_that);case GuruLoading():
return loading(_that);case GuruLoaded():
return loaded(_that);case GuruSukses():
return sukses(_that);case GuruSuccess():
return success(_that);case GuruError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GuruInitial value)?  initial,TResult? Function( GuruLoading value)?  loading,TResult? Function( GuruLoaded value)?  loaded,TResult? Function( GuruSukses value)?  sukses,TResult? Function( GuruSuccess value)?  success,TResult? Function( GuruError value)?  error,}){
final _that = this;
switch (_that) {
case GuruInitial() when initial != null:
return initial(_that);case GuruLoading() when loading != null:
return loading(_that);case GuruLoaded() when loaded != null:
return loaded(_that);case GuruSukses() when sukses != null:
return sukses(_that);case GuruSuccess() when success != null:
return success(_that);case GuruError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Guru> guru)?  loaded,TResult Function( List<Guru> guru)?  sukses,TResult Function( List<Guru> guru,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GuruInitial() when initial != null:
return initial();case GuruLoading() when loading != null:
return loading();case GuruLoaded() when loaded != null:
return loaded(_that.guru);case GuruSukses() when sukses != null:
return sukses(_that.guru);case GuruSuccess() when success != null:
return success(_that.guru,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case GuruError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Guru> guru)  loaded,required TResult Function( List<Guru> guru)  sukses,required TResult Function( List<Guru> guru,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case GuruInitial():
return initial();case GuruLoading():
return loading();case GuruLoaded():
return loaded(_that.guru);case GuruSukses():
return sukses(_that.guru);case GuruSuccess():
return success(_that.guru,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case GuruError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Guru> guru)?  loaded,TResult? Function( List<Guru> guru)?  sukses,TResult? Function( List<Guru> guru,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case GuruInitial() when initial != null:
return initial();case GuruLoading() when loading != null:
return loading();case GuruLoaded() when loaded != null:
return loaded(_that.guru);case GuruSukses() when sukses != null:
return sukses(_that.guru);case GuruSuccess() when success != null:
return success(_that.guru,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case GuruError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class GuruInitial implements GuruState {
  const GuruInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruState.initial()';
}


}




/// @nodoc


class GuruLoading implements GuruState {
  const GuruLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GuruState.loading()';
}


}




/// @nodoc


class GuruLoaded implements GuruState {
  const GuruLoaded(final  List<Guru> guru): _guru = guru;
  

 final  List<Guru> _guru;
 List<Guru> get guru {
  if (_guru is EqualUnmodifiableListView) return _guru;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_guru);
}


/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuruLoadedCopyWith<GuruLoaded> get copyWith => _$GuruLoadedCopyWithImpl<GuruLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruLoaded&&const DeepCollectionEquality().equals(other._guru, _guru));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_guru));

@override
String toString() {
  return 'GuruState.loaded(guru: $guru)';
}


}

/// @nodoc
abstract mixin class $GuruLoadedCopyWith<$Res> implements $GuruStateCopyWith<$Res> {
  factory $GuruLoadedCopyWith(GuruLoaded value, $Res Function(GuruLoaded) _then) = _$GuruLoadedCopyWithImpl;
@useResult
$Res call({
 List<Guru> guru
});




}
/// @nodoc
class _$GuruLoadedCopyWithImpl<$Res>
    implements $GuruLoadedCopyWith<$Res> {
  _$GuruLoadedCopyWithImpl(this._self, this._then);

  final GuruLoaded _self;
  final $Res Function(GuruLoaded) _then;

/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? guru = null,}) {
  return _then(GuruLoaded(
null == guru ? _self._guru : guru // ignore: cast_nullable_to_non_nullable
as List<Guru>,
  ));
}


}

/// @nodoc


class GuruSukses implements GuruState {
  const GuruSukses(final  List<Guru> guru): _guru = guru;
  

 final  List<Guru> _guru;
 List<Guru> get guru {
  if (_guru is EqualUnmodifiableListView) return _guru;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_guru);
}


/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuruSuksesCopyWith<GuruSukses> get copyWith => _$GuruSuksesCopyWithImpl<GuruSukses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruSukses&&const DeepCollectionEquality().equals(other._guru, _guru));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_guru));

@override
String toString() {
  return 'GuruState.sukses(guru: $guru)';
}


}

/// @nodoc
abstract mixin class $GuruSuksesCopyWith<$Res> implements $GuruStateCopyWith<$Res> {
  factory $GuruSuksesCopyWith(GuruSukses value, $Res Function(GuruSukses) _then) = _$GuruSuksesCopyWithImpl;
@useResult
$Res call({
 List<Guru> guru
});




}
/// @nodoc
class _$GuruSuksesCopyWithImpl<$Res>
    implements $GuruSuksesCopyWith<$Res> {
  _$GuruSuksesCopyWithImpl(this._self, this._then);

  final GuruSukses _self;
  final $Res Function(GuruSukses) _then;

/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? guru = null,}) {
  return _then(GuruSukses(
null == guru ? _self._guru : guru // ignore: cast_nullable_to_non_nullable
as List<Guru>,
  ));
}


}

/// @nodoc


class GuruSuccess implements GuruState {
  const GuruSuccess({required final  List<Guru> guru, required this.currentPage, required this.lastPage, required this.hasReachedMax, required this.isLoadingMore}): _guru = guru;
  

 final  List<Guru> _guru;
 List<Guru> get guru {
  if (_guru is EqualUnmodifiableListView) return _guru;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_guru);
}

 final  int currentPage;
 final  int lastPage;
 final  bool hasReachedMax;
 final  bool isLoadingMore;

/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuruSuccessCopyWith<GuruSuccess> get copyWith => _$GuruSuccessCopyWithImpl<GuruSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruSuccess&&const DeepCollectionEquality().equals(other._guru, _guru)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_guru),currentPage,lastPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'GuruState.success(guru: $guru, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $GuruSuccessCopyWith<$Res> implements $GuruStateCopyWith<$Res> {
  factory $GuruSuccessCopyWith(GuruSuccess value, $Res Function(GuruSuccess) _then) = _$GuruSuccessCopyWithImpl;
@useResult
$Res call({
 List<Guru> guru, int currentPage, int lastPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$GuruSuccessCopyWithImpl<$Res>
    implements $GuruSuccessCopyWith<$Res> {
  _$GuruSuccessCopyWithImpl(this._self, this._then);

  final GuruSuccess _self;
  final $Res Function(GuruSuccess) _then;

/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? guru = null,Object? currentPage = null,Object? lastPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(GuruSuccess(
guru: null == guru ? _self._guru : guru // ignore: cast_nullable_to_non_nullable
as List<Guru>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class GuruError implements GuruState {
  const GuruError(this.message);
  

 final  String message;

/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuruErrorCopyWith<GuruError> get copyWith => _$GuruErrorCopyWithImpl<GuruError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuruError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GuruState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GuruErrorCopyWith<$Res> implements $GuruStateCopyWith<$Res> {
  factory $GuruErrorCopyWith(GuruError value, $Res Function(GuruError) _then) = _$GuruErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GuruErrorCopyWithImpl<$Res>
    implements $GuruErrorCopyWith<$Res> {
  _$GuruErrorCopyWithImpl(this._self, this._then);

  final GuruError _self;
  final $Res Function(GuruError) _then;

/// Create a copy of GuruState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GuruError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
