// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rekap_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RekapDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapDetailEvent()';
}


}

/// @nodoc
class $RekapDetailEventCopyWith<$Res>  {
$RekapDetailEventCopyWith(RekapDetailEvent _, $Res Function(RekapDetailEvent) __);
}


/// Adds pattern-matching-related methods to [RekapDetailEvent].
extension RekapDetailEventPatterns on RekapDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _LoadMore value)?  loadMore,TResult Function( _DeleteRekapDetail value)?  deleteRekapDetail,TResult Function( _UpdateRekapDetail value)?  updateRekapDetail,TResult Function( _SearchRekapDetail value)?  searchRekapDetail,TResult Function( _LoadRekapDetail value)?  loadRekapDetail,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _DeleteRekapDetail() when deleteRekapDetail != null:
return deleteRekapDetail(_that);case _UpdateRekapDetail() when updateRekapDetail != null:
return updateRekapDetail(_that);case _SearchRekapDetail() when searchRekapDetail != null:
return searchRekapDetail(_that);case _LoadRekapDetail() when loadRekapDetail != null:
return loadRekapDetail(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _DeleteRekapDetail value)  deleteRekapDetail,required TResult Function( _UpdateRekapDetail value)  updateRekapDetail,required TResult Function( _SearchRekapDetail value)  searchRekapDetail,required TResult Function( _LoadRekapDetail value)  loadRekapDetail,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _LoadMore():
return loadMore(_that);case _DeleteRekapDetail():
return deleteRekapDetail(_that);case _UpdateRekapDetail():
return updateRekapDetail(_that);case _SearchRekapDetail():
return searchRekapDetail(_that);case _LoadRekapDetail():
return loadRekapDetail(_that);case _Refresh():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _DeleteRekapDetail value)?  deleteRekapDetail,TResult? Function( _UpdateRekapDetail value)?  updateRekapDetail,TResult? Function( _SearchRekapDetail value)?  searchRekapDetail,TResult? Function( _LoadRekapDetail value)?  loadRekapDetail,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _DeleteRekapDetail() when deleteRekapDetail != null:
return deleteRekapDetail(_that);case _UpdateRekapDetail() when updateRekapDetail != null:
return updateRekapDetail(_that);case _SearchRekapDetail() when searchRekapDetail != null:
return searchRekapDetail(_that);case _LoadRekapDetail() when loadRekapDetail != null:
return loadRekapDetail(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? search)?  fetch,TResult Function( int id)?  loadMore,TResult Function( int id)?  deleteRekapDetail,TResult Function( RekapDetailSingle rekapdetail)?  updateRekapDetail,TResult Function( String search,  int id,  String? semester)?  searchRekapDetail,TResult Function( int id)?  loadRekapDetail,TResult Function( int id)?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore(_that.id);case _DeleteRekapDetail() when deleteRekapDetail != null:
return deleteRekapDetail(_that.id);case _UpdateRekapDetail() when updateRekapDetail != null:
return updateRekapDetail(_that.rekapdetail);case _SearchRekapDetail() when searchRekapDetail != null:
return searchRekapDetail(_that.search,_that.id,_that.semester);case _LoadRekapDetail() when loadRekapDetail != null:
return loadRekapDetail(_that.id);case _Refresh() when refresh != null:
return refresh(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? search)  fetch,required TResult Function( int id)  loadMore,required TResult Function( int id)  deleteRekapDetail,required TResult Function( RekapDetailSingle rekapdetail)  updateRekapDetail,required TResult Function( String search,  int id,  String? semester)  searchRekapDetail,required TResult Function( int id)  loadRekapDetail,required TResult Function( int id)  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch(_that.search);case _LoadMore():
return loadMore(_that.id);case _DeleteRekapDetail():
return deleteRekapDetail(_that.id);case _UpdateRekapDetail():
return updateRekapDetail(_that.rekapdetail);case _SearchRekapDetail():
return searchRekapDetail(_that.search,_that.id,_that.semester);case _LoadRekapDetail():
return loadRekapDetail(_that.id);case _Refresh():
return refresh(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? search)?  fetch,TResult? Function( int id)?  loadMore,TResult? Function( int id)?  deleteRekapDetail,TResult? Function( RekapDetailSingle rekapdetail)?  updateRekapDetail,TResult? Function( String search,  int id,  String? semester)?  searchRekapDetail,TResult? Function( int id)?  loadRekapDetail,TResult? Function( int id)?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore(_that.id);case _DeleteRekapDetail() when deleteRekapDetail != null:
return deleteRekapDetail(_that.id);case _UpdateRekapDetail() when updateRekapDetail != null:
return updateRekapDetail(_that.rekapdetail);case _SearchRekapDetail() when searchRekapDetail != null:
return searchRekapDetail(_that.search,_that.id,_that.semester);case _LoadRekapDetail() when loadRekapDetail != null:
return loadRekapDetail(_that.id);case _Refresh() when refresh != null:
return refresh(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RekapDetailEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapDetailEvent.started()';
}


}




/// @nodoc


class _Fetch implements RekapDetailEvent {
  const _Fetch({this.search});
  

 final  String? search;

/// Create a copy of RekapDetailEvent
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
  return 'RekapDetailEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $RekapDetailEventCopyWith<$Res> {
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

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(_Fetch(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadMore implements RekapDetailEvent {
  const _LoadMore(this.id);
  

 final  int id;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMoreCopyWith<_LoadMore> get copyWith => __$LoadMoreCopyWithImpl<_LoadMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RekapDetailEvent.loadMore(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadMoreCopyWith<$Res> implements $RekapDetailEventCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) _then) = __$LoadMoreCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadMoreCopyWithImpl<$Res>
    implements _$LoadMoreCopyWith<$Res> {
  __$LoadMoreCopyWithImpl(this._self, this._then);

  final _LoadMore _self;
  final $Res Function(_LoadMore) _then;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadMore(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DeleteRekapDetail implements RekapDetailEvent {
  const _DeleteRekapDetail(this.id);
  

 final  int id;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteRekapDetailCopyWith<_DeleteRekapDetail> get copyWith => __$DeleteRekapDetailCopyWithImpl<_DeleteRekapDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteRekapDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RekapDetailEvent.deleteRekapDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteRekapDetailCopyWith<$Res> implements $RekapDetailEventCopyWith<$Res> {
  factory _$DeleteRekapDetailCopyWith(_DeleteRekapDetail value, $Res Function(_DeleteRekapDetail) _then) = __$DeleteRekapDetailCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteRekapDetailCopyWithImpl<$Res>
    implements _$DeleteRekapDetailCopyWith<$Res> {
  __$DeleteRekapDetailCopyWithImpl(this._self, this._then);

  final _DeleteRekapDetail _self;
  final $Res Function(_DeleteRekapDetail) _then;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteRekapDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateRekapDetail implements RekapDetailEvent {
  const _UpdateRekapDetail(this.rekapdetail);
  

 final  RekapDetailSingle rekapdetail;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateRekapDetailCopyWith<_UpdateRekapDetail> get copyWith => __$UpdateRekapDetailCopyWithImpl<_UpdateRekapDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateRekapDetail&&(identical(other.rekapdetail, rekapdetail) || other.rekapdetail == rekapdetail));
}


@override
int get hashCode => Object.hash(runtimeType,rekapdetail);

@override
String toString() {
  return 'RekapDetailEvent.updateRekapDetail(rekapdetail: $rekapdetail)';
}


}

/// @nodoc
abstract mixin class _$UpdateRekapDetailCopyWith<$Res> implements $RekapDetailEventCopyWith<$Res> {
  factory _$UpdateRekapDetailCopyWith(_UpdateRekapDetail value, $Res Function(_UpdateRekapDetail) _then) = __$UpdateRekapDetailCopyWithImpl;
@useResult
$Res call({
 RekapDetailSingle rekapdetail
});




}
/// @nodoc
class __$UpdateRekapDetailCopyWithImpl<$Res>
    implements _$UpdateRekapDetailCopyWith<$Res> {
  __$UpdateRekapDetailCopyWithImpl(this._self, this._then);

  final _UpdateRekapDetail _self;
  final $Res Function(_UpdateRekapDetail) _then;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekapdetail = null,}) {
  return _then(_UpdateRekapDetail(
null == rekapdetail ? _self.rekapdetail : rekapdetail // ignore: cast_nullable_to_non_nullable
as RekapDetailSingle,
  ));
}


}

/// @nodoc


class _SearchRekapDetail implements RekapDetailEvent {
  const _SearchRekapDetail(this.search, this.id, this.semester);
  

 final  String search;
 final  int id;
 final  String? semester;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchRekapDetailCopyWith<_SearchRekapDetail> get copyWith => __$SearchRekapDetailCopyWithImpl<_SearchRekapDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchRekapDetail&&(identical(other.search, search) || other.search == search)&&(identical(other.id, id) || other.id == id)&&(identical(other.semester, semester) || other.semester == semester));
}


@override
int get hashCode => Object.hash(runtimeType,search,id,semester);

@override
String toString() {
  return 'RekapDetailEvent.searchRekapDetail(search: $search, id: $id, semester: $semester)';
}


}

/// @nodoc
abstract mixin class _$SearchRekapDetailCopyWith<$Res> implements $RekapDetailEventCopyWith<$Res> {
  factory _$SearchRekapDetailCopyWith(_SearchRekapDetail value, $Res Function(_SearchRekapDetail) _then) = __$SearchRekapDetailCopyWithImpl;
@useResult
$Res call({
 String search, int id, String? semester
});




}
/// @nodoc
class __$SearchRekapDetailCopyWithImpl<$Res>
    implements _$SearchRekapDetailCopyWith<$Res> {
  __$SearchRekapDetailCopyWithImpl(this._self, this._then);

  final _SearchRekapDetail _self;
  final $Res Function(_SearchRekapDetail) _then;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = null,Object? id = null,Object? semester = freezed,}) {
  return _then(_SearchRekapDetail(
null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,freezed == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadRekapDetail implements RekapDetailEvent {
  const _LoadRekapDetail(this.id);
  

 final  int id;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadRekapDetailCopyWith<_LoadRekapDetail> get copyWith => __$LoadRekapDetailCopyWithImpl<_LoadRekapDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadRekapDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RekapDetailEvent.loadRekapDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LoadRekapDetailCopyWith<$Res> implements $RekapDetailEventCopyWith<$Res> {
  factory _$LoadRekapDetailCopyWith(_LoadRekapDetail value, $Res Function(_LoadRekapDetail) _then) = __$LoadRekapDetailCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$LoadRekapDetailCopyWithImpl<$Res>
    implements _$LoadRekapDetailCopyWith<$Res> {
  __$LoadRekapDetailCopyWithImpl(this._self, this._then);

  final _LoadRekapDetail _self;
  final $Res Function(_LoadRekapDetail) _then;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LoadRekapDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Refresh implements RekapDetailEvent {
  const _Refresh(this.id);
  

 final  int id;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshCopyWith<_Refresh> get copyWith => __$RefreshCopyWithImpl<_Refresh>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RekapDetailEvent.refresh(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RefreshCopyWith<$Res> implements $RekapDetailEventCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) _then) = __$RefreshCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$RefreshCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(this._self, this._then);

  final _Refresh _self;
  final $Res Function(_Refresh) _then;

/// Create a copy of RekapDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Refresh(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RekapDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapDetailState()';
}


}

/// @nodoc
class $RekapDetailStateCopyWith<$Res>  {
$RekapDetailStateCopyWith(RekapDetailState _, $Res Function(RekapDetailState) __);
}


/// Adds pattern-matching-related methods to [RekapDetailState].
extension RekapDetailStatePatterns on RekapDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RekapDetailInitial value)?  initial,TResult Function( RekapDetailLoading value)?  loading,TResult Function( RekapDetailLoaded value)?  loaded,TResult Function( RekapDetailSukses value)?  sukses,TResult Function( RekapDetailSuccess value)?  success,TResult Function( RekapDetailError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RekapDetailInitial() when initial != null:
return initial(_that);case RekapDetailLoading() when loading != null:
return loading(_that);case RekapDetailLoaded() when loaded != null:
return loaded(_that);case RekapDetailSukses() when sukses != null:
return sukses(_that);case RekapDetailSuccess() when success != null:
return success(_that);case RekapDetailError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RekapDetailInitial value)  initial,required TResult Function( RekapDetailLoading value)  loading,required TResult Function( RekapDetailLoaded value)  loaded,required TResult Function( RekapDetailSukses value)  sukses,required TResult Function( RekapDetailSuccess value)  success,required TResult Function( RekapDetailError value)  error,}){
final _that = this;
switch (_that) {
case RekapDetailInitial():
return initial(_that);case RekapDetailLoading():
return loading(_that);case RekapDetailLoaded():
return loaded(_that);case RekapDetailSukses():
return sukses(_that);case RekapDetailSuccess():
return success(_that);case RekapDetailError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RekapDetailInitial value)?  initial,TResult? Function( RekapDetailLoading value)?  loading,TResult? Function( RekapDetailLoaded value)?  loaded,TResult? Function( RekapDetailSukses value)?  sukses,TResult? Function( RekapDetailSuccess value)?  success,TResult? Function( RekapDetailError value)?  error,}){
final _that = this;
switch (_that) {
case RekapDetailInitial() when initial != null:
return initial(_that);case RekapDetailLoading() when loading != null:
return loading(_that);case RekapDetailLoaded() when loaded != null:
return loaded(_that);case RekapDetailSukses() when sukses != null:
return sukses(_that);case RekapDetailSuccess() when success != null:
return success(_that);case RekapDetailError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<RekapDetailSingle> rekapdetail)?  loaded,TResult Function( List<RekapDetailSingle> rekapdetail)?  sukses,TResult Function( List<RekapDetailSingle> rekapdetail,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RekapDetailInitial() when initial != null:
return initial();case RekapDetailLoading() when loading != null:
return loading();case RekapDetailLoaded() when loaded != null:
return loaded(_that.rekapdetail);case RekapDetailSukses() when sukses != null:
return sukses(_that.rekapdetail);case RekapDetailSuccess() when success != null:
return success(_that.rekapdetail,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case RekapDetailError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<RekapDetailSingle> rekapdetail)  loaded,required TResult Function( List<RekapDetailSingle> rekapdetail)  sukses,required TResult Function( List<RekapDetailSingle> rekapdetail,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case RekapDetailInitial():
return initial();case RekapDetailLoading():
return loading();case RekapDetailLoaded():
return loaded(_that.rekapdetail);case RekapDetailSukses():
return sukses(_that.rekapdetail);case RekapDetailSuccess():
return success(_that.rekapdetail,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case RekapDetailError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<RekapDetailSingle> rekapdetail)?  loaded,TResult? Function( List<RekapDetailSingle> rekapdetail)?  sukses,TResult? Function( List<RekapDetailSingle> rekapdetail,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case RekapDetailInitial() when initial != null:
return initial();case RekapDetailLoading() when loading != null:
return loading();case RekapDetailLoaded() when loaded != null:
return loaded(_that.rekapdetail);case RekapDetailSukses() when sukses != null:
return sukses(_that.rekapdetail);case RekapDetailSuccess() when success != null:
return success(_that.rekapdetail,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case RekapDetailError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class RekapDetailInitial implements RekapDetailState {
  const RekapDetailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapDetailState.initial()';
}


}




/// @nodoc


class RekapDetailLoading implements RekapDetailState {
  const RekapDetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RekapDetailState.loading()';
}


}




/// @nodoc


class RekapDetailLoaded implements RekapDetailState {
  const RekapDetailLoaded(final  List<RekapDetailSingle> rekapdetail): _rekapdetail = rekapdetail;
  

 final  List<RekapDetailSingle> _rekapdetail;
 List<RekapDetailSingle> get rekapdetail {
  if (_rekapdetail is EqualUnmodifiableListView) return _rekapdetail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rekapdetail);
}


/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapDetailLoadedCopyWith<RekapDetailLoaded> get copyWith => _$RekapDetailLoadedCopyWithImpl<RekapDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailLoaded&&const DeepCollectionEquality().equals(other._rekapdetail, _rekapdetail));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rekapdetail));

@override
String toString() {
  return 'RekapDetailState.loaded(rekapdetail: $rekapdetail)';
}


}

/// @nodoc
abstract mixin class $RekapDetailLoadedCopyWith<$Res> implements $RekapDetailStateCopyWith<$Res> {
  factory $RekapDetailLoadedCopyWith(RekapDetailLoaded value, $Res Function(RekapDetailLoaded) _then) = _$RekapDetailLoadedCopyWithImpl;
@useResult
$Res call({
 List<RekapDetailSingle> rekapdetail
});




}
/// @nodoc
class _$RekapDetailLoadedCopyWithImpl<$Res>
    implements $RekapDetailLoadedCopyWith<$Res> {
  _$RekapDetailLoadedCopyWithImpl(this._self, this._then);

  final RekapDetailLoaded _self;
  final $Res Function(RekapDetailLoaded) _then;

/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekapdetail = null,}) {
  return _then(RekapDetailLoaded(
null == rekapdetail ? _self._rekapdetail : rekapdetail // ignore: cast_nullable_to_non_nullable
as List<RekapDetailSingle>,
  ));
}


}

/// @nodoc


class RekapDetailSukses implements RekapDetailState {
  const RekapDetailSukses(final  List<RekapDetailSingle> rekapdetail): _rekapdetail = rekapdetail;
  

 final  List<RekapDetailSingle> _rekapdetail;
 List<RekapDetailSingle> get rekapdetail {
  if (_rekapdetail is EqualUnmodifiableListView) return _rekapdetail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rekapdetail);
}


/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapDetailSuksesCopyWith<RekapDetailSukses> get copyWith => _$RekapDetailSuksesCopyWithImpl<RekapDetailSukses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailSukses&&const DeepCollectionEquality().equals(other._rekapdetail, _rekapdetail));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rekapdetail));

@override
String toString() {
  return 'RekapDetailState.sukses(rekapdetail: $rekapdetail)';
}


}

/// @nodoc
abstract mixin class $RekapDetailSuksesCopyWith<$Res> implements $RekapDetailStateCopyWith<$Res> {
  factory $RekapDetailSuksesCopyWith(RekapDetailSukses value, $Res Function(RekapDetailSukses) _then) = _$RekapDetailSuksesCopyWithImpl;
@useResult
$Res call({
 List<RekapDetailSingle> rekapdetail
});




}
/// @nodoc
class _$RekapDetailSuksesCopyWithImpl<$Res>
    implements $RekapDetailSuksesCopyWith<$Res> {
  _$RekapDetailSuksesCopyWithImpl(this._self, this._then);

  final RekapDetailSukses _self;
  final $Res Function(RekapDetailSukses) _then;

/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekapdetail = null,}) {
  return _then(RekapDetailSukses(
null == rekapdetail ? _self._rekapdetail : rekapdetail // ignore: cast_nullable_to_non_nullable
as List<RekapDetailSingle>,
  ));
}


}

/// @nodoc


class RekapDetailSuccess implements RekapDetailState {
  const RekapDetailSuccess({required final  List<RekapDetailSingle> rekapdetail, required this.currentPage, required this.lastPage, required this.hasReachedMax, required this.isLoadingMore}): _rekapdetail = rekapdetail;
  

 final  List<RekapDetailSingle> _rekapdetail;
 List<RekapDetailSingle> get rekapdetail {
  if (_rekapdetail is EqualUnmodifiableListView) return _rekapdetail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rekapdetail);
}

 final  int currentPage;
 final  int lastPage;
 final  bool hasReachedMax;
 final  bool isLoadingMore;

/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapDetailSuccessCopyWith<RekapDetailSuccess> get copyWith => _$RekapDetailSuccessCopyWithImpl<RekapDetailSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailSuccess&&const DeepCollectionEquality().equals(other._rekapdetail, _rekapdetail)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rekapdetail),currentPage,lastPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'RekapDetailState.success(rekapdetail: $rekapdetail, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $RekapDetailSuccessCopyWith<$Res> implements $RekapDetailStateCopyWith<$Res> {
  factory $RekapDetailSuccessCopyWith(RekapDetailSuccess value, $Res Function(RekapDetailSuccess) _then) = _$RekapDetailSuccessCopyWithImpl;
@useResult
$Res call({
 List<RekapDetailSingle> rekapdetail, int currentPage, int lastPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$RekapDetailSuccessCopyWithImpl<$Res>
    implements $RekapDetailSuccessCopyWith<$Res> {
  _$RekapDetailSuccessCopyWithImpl(this._self, this._then);

  final RekapDetailSuccess _self;
  final $Res Function(RekapDetailSuccess) _then;

/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rekapdetail = null,Object? currentPage = null,Object? lastPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(RekapDetailSuccess(
rekapdetail: null == rekapdetail ? _self._rekapdetail : rekapdetail // ignore: cast_nullable_to_non_nullable
as List<RekapDetailSingle>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RekapDetailError implements RekapDetailState {
  const RekapDetailError(this.message);
  

 final  String message;

/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekapDetailErrorCopyWith<RekapDetailError> get copyWith => _$RekapDetailErrorCopyWithImpl<RekapDetailError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekapDetailError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RekapDetailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $RekapDetailErrorCopyWith<$Res> implements $RekapDetailStateCopyWith<$Res> {
  factory $RekapDetailErrorCopyWith(RekapDetailError value, $Res Function(RekapDetailError) _then) = _$RekapDetailErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RekapDetailErrorCopyWithImpl<$Res>
    implements $RekapDetailErrorCopyWith<$Res> {
  _$RekapDetailErrorCopyWithImpl(this._self, this._then);

  final RekapDetailError _self;
  final $Res Function(RekapDetailError) _then;

/// Create a copy of RekapDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(RekapDetailError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
