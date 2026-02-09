// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kontrol_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KontrolEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolEvent()';
}


}

/// @nodoc
class $KontrolEventCopyWith<$Res>  {
$KontrolEventCopyWith(KontrolEvent _, $Res Function(KontrolEvent) __);
}


/// Adds pattern-matching-related methods to [KontrolEvent].
extension KontrolEventPatterns on KontrolEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _LoadMore value)?  loadMore,TResult Function( _AddKontrol value)?  addKontrol,TResult Function( _DeleteKontrol value)?  deleteKontrol,TResult Function( _UpdateKontrol value)?  updateKontrol,TResult Function( _SearchKontrol value)?  searchKontrol,TResult Function( _LoadKontrol value)?  loadKontrol,TResult Function( _Refresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddKontrol() when addKontrol != null:
return addKontrol(_that);case _DeleteKontrol() when deleteKontrol != null:
return deleteKontrol(_that);case _UpdateKontrol() when updateKontrol != null:
return updateKontrol(_that);case _SearchKontrol() when searchKontrol != null:
return searchKontrol(_that);case _LoadKontrol() when loadKontrol != null:
return loadKontrol(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _LoadMore value)  loadMore,required TResult Function( _AddKontrol value)  addKontrol,required TResult Function( _DeleteKontrol value)  deleteKontrol,required TResult Function( _UpdateKontrol value)  updateKontrol,required TResult Function( _SearchKontrol value)  searchKontrol,required TResult Function( _LoadKontrol value)  loadKontrol,required TResult Function( _Refresh value)  refresh,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _LoadMore():
return loadMore(_that);case _AddKontrol():
return addKontrol(_that);case _DeleteKontrol():
return deleteKontrol(_that);case _UpdateKontrol():
return updateKontrol(_that);case _SearchKontrol():
return searchKontrol(_that);case _LoadKontrol():
return loadKontrol(_that);case _Refresh():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _LoadMore value)?  loadMore,TResult? Function( _AddKontrol value)?  addKontrol,TResult? Function( _DeleteKontrol value)?  deleteKontrol,TResult? Function( _UpdateKontrol value)?  updateKontrol,TResult? Function( _SearchKontrol value)?  searchKontrol,TResult? Function( _LoadKontrol value)?  loadKontrol,TResult? Function( _Refresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _AddKontrol() when addKontrol != null:
return addKontrol(_that);case _DeleteKontrol() when deleteKontrol != null:
return deleteKontrol(_that);case _UpdateKontrol() when updateKontrol != null:
return updateKontrol(_that);case _SearchKontrol() when searchKontrol != null:
return searchKontrol(_that);case _LoadKontrol() when loadKontrol != null:
return loadKontrol(_that);case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? search)?  fetch,TResult Function()?  loadMore,TResult Function( KontrolRequestModel kontrol)?  addKontrol,TResult Function( int id)?  deleteKontrol,TResult Function( Kontrol kontrol)?  updateKontrol,TResult Function( String query)?  searchKontrol,TResult Function()?  loadKontrol,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddKontrol() when addKontrol != null:
return addKontrol(_that.kontrol);case _DeleteKontrol() when deleteKontrol != null:
return deleteKontrol(_that.id);case _UpdateKontrol() when updateKontrol != null:
return updateKontrol(_that.kontrol);case _SearchKontrol() when searchKontrol != null:
return searchKontrol(_that.query);case _LoadKontrol() when loadKontrol != null:
return loadKontrol();case _Refresh() when refresh != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? search)  fetch,required TResult Function()  loadMore,required TResult Function( KontrolRequestModel kontrol)  addKontrol,required TResult Function( int id)  deleteKontrol,required TResult Function( Kontrol kontrol)  updateKontrol,required TResult Function( String query)  searchKontrol,required TResult Function()  loadKontrol,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch(_that.search);case _LoadMore():
return loadMore();case _AddKontrol():
return addKontrol(_that.kontrol);case _DeleteKontrol():
return deleteKontrol(_that.id);case _UpdateKontrol():
return updateKontrol(_that.kontrol);case _SearchKontrol():
return searchKontrol(_that.query);case _LoadKontrol():
return loadKontrol();case _Refresh():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? search)?  fetch,TResult? Function()?  loadMore,TResult? Function( KontrolRequestModel kontrol)?  addKontrol,TResult? Function( int id)?  deleteKontrol,TResult? Function( Kontrol kontrol)?  updateKontrol,TResult? Function( String query)?  searchKontrol,TResult? Function()?  loadKontrol,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch(_that.search);case _LoadMore() when loadMore != null:
return loadMore();case _AddKontrol() when addKontrol != null:
return addKontrol(_that.kontrol);case _DeleteKontrol() when deleteKontrol != null:
return deleteKontrol(_that.id);case _UpdateKontrol() when updateKontrol != null:
return updateKontrol(_that.kontrol);case _SearchKontrol() when searchKontrol != null:
return searchKontrol(_that.query);case _LoadKontrol() when loadKontrol != null:
return loadKontrol();case _Refresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements KontrolEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolEvent.started()';
}


}




/// @nodoc


class _Fetch implements KontrolEvent {
  const _Fetch({this.search});
  

 final  String? search;

/// Create a copy of KontrolEvent
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
  return 'KontrolEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $KontrolEventCopyWith<$Res> {
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

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(_Fetch(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadMore implements KontrolEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolEvent.loadMore()';
}


}




/// @nodoc


class _AddKontrol implements KontrolEvent {
  const _AddKontrol(this.kontrol);
  

 final  KontrolRequestModel kontrol;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddKontrolCopyWith<_AddKontrol> get copyWith => __$AddKontrolCopyWithImpl<_AddKontrol>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddKontrol&&(identical(other.kontrol, kontrol) || other.kontrol == kontrol));
}


@override
int get hashCode => Object.hash(runtimeType,kontrol);

@override
String toString() {
  return 'KontrolEvent.addKontrol(kontrol: $kontrol)';
}


}

/// @nodoc
abstract mixin class _$AddKontrolCopyWith<$Res> implements $KontrolEventCopyWith<$Res> {
  factory _$AddKontrolCopyWith(_AddKontrol value, $Res Function(_AddKontrol) _then) = __$AddKontrolCopyWithImpl;
@useResult
$Res call({
 KontrolRequestModel kontrol
});




}
/// @nodoc
class __$AddKontrolCopyWithImpl<$Res>
    implements _$AddKontrolCopyWith<$Res> {
  __$AddKontrolCopyWithImpl(this._self, this._then);

  final _AddKontrol _self;
  final $Res Function(_AddKontrol) _then;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kontrol = null,}) {
  return _then(_AddKontrol(
null == kontrol ? _self.kontrol : kontrol // ignore: cast_nullable_to_non_nullable
as KontrolRequestModel,
  ));
}


}

/// @nodoc


class _DeleteKontrol implements KontrolEvent {
  const _DeleteKontrol(this.id);
  

 final  int id;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteKontrolCopyWith<_DeleteKontrol> get copyWith => __$DeleteKontrolCopyWithImpl<_DeleteKontrol>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteKontrol&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'KontrolEvent.deleteKontrol(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteKontrolCopyWith<$Res> implements $KontrolEventCopyWith<$Res> {
  factory _$DeleteKontrolCopyWith(_DeleteKontrol value, $Res Function(_DeleteKontrol) _then) = __$DeleteKontrolCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteKontrolCopyWithImpl<$Res>
    implements _$DeleteKontrolCopyWith<$Res> {
  __$DeleteKontrolCopyWithImpl(this._self, this._then);

  final _DeleteKontrol _self;
  final $Res Function(_DeleteKontrol) _then;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteKontrol(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateKontrol implements KontrolEvent {
  const _UpdateKontrol(this.kontrol);
  

 final  Kontrol kontrol;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateKontrolCopyWith<_UpdateKontrol> get copyWith => __$UpdateKontrolCopyWithImpl<_UpdateKontrol>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateKontrol&&(identical(other.kontrol, kontrol) || other.kontrol == kontrol));
}


@override
int get hashCode => Object.hash(runtimeType,kontrol);

@override
String toString() {
  return 'KontrolEvent.updateKontrol(kontrol: $kontrol)';
}


}

/// @nodoc
abstract mixin class _$UpdateKontrolCopyWith<$Res> implements $KontrolEventCopyWith<$Res> {
  factory _$UpdateKontrolCopyWith(_UpdateKontrol value, $Res Function(_UpdateKontrol) _then) = __$UpdateKontrolCopyWithImpl;
@useResult
$Res call({
 Kontrol kontrol
});




}
/// @nodoc
class __$UpdateKontrolCopyWithImpl<$Res>
    implements _$UpdateKontrolCopyWith<$Res> {
  __$UpdateKontrolCopyWithImpl(this._self, this._then);

  final _UpdateKontrol _self;
  final $Res Function(_UpdateKontrol) _then;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kontrol = null,}) {
  return _then(_UpdateKontrol(
null == kontrol ? _self.kontrol : kontrol // ignore: cast_nullable_to_non_nullable
as Kontrol,
  ));
}


}

/// @nodoc


class _SearchKontrol implements KontrolEvent {
  const _SearchKontrol(this.query);
  

 final  String query;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchKontrolCopyWith<_SearchKontrol> get copyWith => __$SearchKontrolCopyWithImpl<_SearchKontrol>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchKontrol&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'KontrolEvent.searchKontrol(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchKontrolCopyWith<$Res> implements $KontrolEventCopyWith<$Res> {
  factory _$SearchKontrolCopyWith(_SearchKontrol value, $Res Function(_SearchKontrol) _then) = __$SearchKontrolCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchKontrolCopyWithImpl<$Res>
    implements _$SearchKontrolCopyWith<$Res> {
  __$SearchKontrolCopyWithImpl(this._self, this._then);

  final _SearchKontrol _self;
  final $Res Function(_SearchKontrol) _then;

/// Create a copy of KontrolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchKontrol(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadKontrol implements KontrolEvent {
  const _LoadKontrol();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadKontrol);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolEvent.loadKontrol()';
}


}




/// @nodoc


class _Refresh implements KontrolEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolEvent.refresh()';
}


}




/// @nodoc
mixin _$KontrolState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolState()';
}


}

/// @nodoc
class $KontrolStateCopyWith<$Res>  {
$KontrolStateCopyWith(KontrolState _, $Res Function(KontrolState) __);
}


/// Adds pattern-matching-related methods to [KontrolState].
extension KontrolStatePatterns on KontrolState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( KontrolInitial value)?  initial,TResult Function( KontrolLoading value)?  loading,TResult Function( KontrolLoaded value)?  loaded,TResult Function( KontrolSukses value)?  sukses,TResult Function( KontrolSuccess value)?  success,TResult Function( KontrolError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case KontrolInitial() when initial != null:
return initial(_that);case KontrolLoading() when loading != null:
return loading(_that);case KontrolLoaded() when loaded != null:
return loaded(_that);case KontrolSukses() when sukses != null:
return sukses(_that);case KontrolSuccess() when success != null:
return success(_that);case KontrolError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( KontrolInitial value)  initial,required TResult Function( KontrolLoading value)  loading,required TResult Function( KontrolLoaded value)  loaded,required TResult Function( KontrolSukses value)  sukses,required TResult Function( KontrolSuccess value)  success,required TResult Function( KontrolError value)  error,}){
final _that = this;
switch (_that) {
case KontrolInitial():
return initial(_that);case KontrolLoading():
return loading(_that);case KontrolLoaded():
return loaded(_that);case KontrolSukses():
return sukses(_that);case KontrolSuccess():
return success(_that);case KontrolError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( KontrolInitial value)?  initial,TResult? Function( KontrolLoading value)?  loading,TResult? Function( KontrolLoaded value)?  loaded,TResult? Function( KontrolSukses value)?  sukses,TResult? Function( KontrolSuccess value)?  success,TResult? Function( KontrolError value)?  error,}){
final _that = this;
switch (_that) {
case KontrolInitial() when initial != null:
return initial(_that);case KontrolLoading() when loading != null:
return loading(_that);case KontrolLoaded() when loaded != null:
return loaded(_that);case KontrolSukses() when sukses != null:
return sukses(_that);case KontrolSuccess() when success != null:
return success(_that);case KontrolError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Kontrol> kontrol)?  loaded,TResult Function( List<Kontrol> kontrol)?  sukses,TResult Function( List<Kontrol> kontrol,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case KontrolInitial() when initial != null:
return initial();case KontrolLoading() when loading != null:
return loading();case KontrolLoaded() when loaded != null:
return loaded(_that.kontrol);case KontrolSukses() when sukses != null:
return sukses(_that.kontrol);case KontrolSuccess() when success != null:
return success(_that.kontrol,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case KontrolError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Kontrol> kontrol)  loaded,required TResult Function( List<Kontrol> kontrol)  sukses,required TResult Function( List<Kontrol> kontrol,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case KontrolInitial():
return initial();case KontrolLoading():
return loading();case KontrolLoaded():
return loaded(_that.kontrol);case KontrolSukses():
return sukses(_that.kontrol);case KontrolSuccess():
return success(_that.kontrol,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case KontrolError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Kontrol> kontrol)?  loaded,TResult? Function( List<Kontrol> kontrol)?  sukses,TResult? Function( List<Kontrol> kontrol,  int currentPage,  int lastPage,  bool hasReachedMax,  bool isLoadingMore)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case KontrolInitial() when initial != null:
return initial();case KontrolLoading() when loading != null:
return loading();case KontrolLoaded() when loaded != null:
return loaded(_that.kontrol);case KontrolSukses() when sukses != null:
return sukses(_that.kontrol);case KontrolSuccess() when success != null:
return success(_that.kontrol,_that.currentPage,_that.lastPage,_that.hasReachedMax,_that.isLoadingMore);case KontrolError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class KontrolInitial implements KontrolState {
  const KontrolInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolState.initial()';
}


}




/// @nodoc


class KontrolLoading implements KontrolState {
  const KontrolLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'KontrolState.loading()';
}


}




/// @nodoc


class KontrolLoaded implements KontrolState {
  const KontrolLoaded(final  List<Kontrol> kontrol): _kontrol = kontrol;
  

 final  List<Kontrol> _kontrol;
 List<Kontrol> get kontrol {
  if (_kontrol is EqualUnmodifiableListView) return _kontrol;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kontrol);
}


/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KontrolLoadedCopyWith<KontrolLoaded> get copyWith => _$KontrolLoadedCopyWithImpl<KontrolLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolLoaded&&const DeepCollectionEquality().equals(other._kontrol, _kontrol));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_kontrol));

@override
String toString() {
  return 'KontrolState.loaded(kontrol: $kontrol)';
}


}

/// @nodoc
abstract mixin class $KontrolLoadedCopyWith<$Res> implements $KontrolStateCopyWith<$Res> {
  factory $KontrolLoadedCopyWith(KontrolLoaded value, $Res Function(KontrolLoaded) _then) = _$KontrolLoadedCopyWithImpl;
@useResult
$Res call({
 List<Kontrol> kontrol
});




}
/// @nodoc
class _$KontrolLoadedCopyWithImpl<$Res>
    implements $KontrolLoadedCopyWith<$Res> {
  _$KontrolLoadedCopyWithImpl(this._self, this._then);

  final KontrolLoaded _self;
  final $Res Function(KontrolLoaded) _then;

/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kontrol = null,}) {
  return _then(KontrolLoaded(
null == kontrol ? _self._kontrol : kontrol // ignore: cast_nullable_to_non_nullable
as List<Kontrol>,
  ));
}


}

/// @nodoc


class KontrolSukses implements KontrolState {
  const KontrolSukses(final  List<Kontrol> kontrol): _kontrol = kontrol;
  

 final  List<Kontrol> _kontrol;
 List<Kontrol> get kontrol {
  if (_kontrol is EqualUnmodifiableListView) return _kontrol;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kontrol);
}


/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KontrolSuksesCopyWith<KontrolSukses> get copyWith => _$KontrolSuksesCopyWithImpl<KontrolSukses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolSukses&&const DeepCollectionEquality().equals(other._kontrol, _kontrol));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_kontrol));

@override
String toString() {
  return 'KontrolState.sukses(kontrol: $kontrol)';
}


}

/// @nodoc
abstract mixin class $KontrolSuksesCopyWith<$Res> implements $KontrolStateCopyWith<$Res> {
  factory $KontrolSuksesCopyWith(KontrolSukses value, $Res Function(KontrolSukses) _then) = _$KontrolSuksesCopyWithImpl;
@useResult
$Res call({
 List<Kontrol> kontrol
});




}
/// @nodoc
class _$KontrolSuksesCopyWithImpl<$Res>
    implements $KontrolSuksesCopyWith<$Res> {
  _$KontrolSuksesCopyWithImpl(this._self, this._then);

  final KontrolSukses _self;
  final $Res Function(KontrolSukses) _then;

/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kontrol = null,}) {
  return _then(KontrolSukses(
null == kontrol ? _self._kontrol : kontrol // ignore: cast_nullable_to_non_nullable
as List<Kontrol>,
  ));
}


}

/// @nodoc


class KontrolSuccess implements KontrolState {
  const KontrolSuccess({required final  List<Kontrol> kontrol, required this.currentPage, required this.lastPage, required this.hasReachedMax, required this.isLoadingMore}): _kontrol = kontrol;
  

 final  List<Kontrol> _kontrol;
 List<Kontrol> get kontrol {
  if (_kontrol is EqualUnmodifiableListView) return _kontrol;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kontrol);
}

 final  int currentPage;
 final  int lastPage;
 final  bool hasReachedMax;
 final  bool isLoadingMore;

/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KontrolSuccessCopyWith<KontrolSuccess> get copyWith => _$KontrolSuccessCopyWithImpl<KontrolSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolSuccess&&const DeepCollectionEquality().equals(other._kontrol, _kontrol)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_kontrol),currentPage,lastPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'KontrolState.success(kontrol: $kontrol, currentPage: $currentPage, lastPage: $lastPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $KontrolSuccessCopyWith<$Res> implements $KontrolStateCopyWith<$Res> {
  factory $KontrolSuccessCopyWith(KontrolSuccess value, $Res Function(KontrolSuccess) _then) = _$KontrolSuccessCopyWithImpl;
@useResult
$Res call({
 List<Kontrol> kontrol, int currentPage, int lastPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$KontrolSuccessCopyWithImpl<$Res>
    implements $KontrolSuccessCopyWith<$Res> {
  _$KontrolSuccessCopyWithImpl(this._self, this._then);

  final KontrolSuccess _self;
  final $Res Function(KontrolSuccess) _then;

/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kontrol = null,Object? currentPage = null,Object? lastPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(KontrolSuccess(
kontrol: null == kontrol ? _self._kontrol : kontrol // ignore: cast_nullable_to_non_nullable
as List<Kontrol>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class KontrolError implements KontrolState {
  const KontrolError(this.message);
  

 final  String message;

/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KontrolErrorCopyWith<KontrolError> get copyWith => _$KontrolErrorCopyWithImpl<KontrolError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KontrolError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'KontrolState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $KontrolErrorCopyWith<$Res> implements $KontrolStateCopyWith<$Res> {
  factory $KontrolErrorCopyWith(KontrolError value, $Res Function(KontrolError) _then) = _$KontrolErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$KontrolErrorCopyWithImpl<$Res>
    implements $KontrolErrorCopyWith<$Res> {
  _$KontrolErrorCopyWithImpl(this._self, this._then);

  final KontrolError _self;
  final $Res Function(KontrolError) _then;

/// Create a copy of KontrolState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(KontrolError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
