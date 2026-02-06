// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jurusan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JurusanEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JurusanEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JurusanEvent()';
}


}

/// @nodoc
class $JurusanEventCopyWith<$Res>  {
$JurusanEventCopyWith(JurusanEvent _, $Res Function(JurusanEvent) __);
}


/// Adds pattern-matching-related methods to [JurusanEvent].
extension JurusanEventPatterns on JurusanEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Fetch value)?  fetch,TResult Function( _SearchJurusan value)?  searchJurusan,TResult Function( _AddJurusan value)?  addJurusan,TResult Function( _DeleteJurusan value)?  deleteJurusan,TResult Function( _UpdateJurusan value)?  updateJurusan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchJurusan() when searchJurusan != null:
return searchJurusan(_that);case _AddJurusan() when addJurusan != null:
return addJurusan(_that);case _DeleteJurusan() when deleteJurusan != null:
return deleteJurusan(_that);case _UpdateJurusan() when updateJurusan != null:
return updateJurusan(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Fetch value)  fetch,required TResult Function( _SearchJurusan value)  searchJurusan,required TResult Function( _AddJurusan value)  addJurusan,required TResult Function( _DeleteJurusan value)  deleteJurusan,required TResult Function( _UpdateJurusan value)  updateJurusan,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Fetch():
return fetch(_that);case _SearchJurusan():
return searchJurusan(_that);case _AddJurusan():
return addJurusan(_that);case _DeleteJurusan():
return deleteJurusan(_that);case _UpdateJurusan():
return updateJurusan(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Fetch value)?  fetch,TResult? Function( _SearchJurusan value)?  searchJurusan,TResult? Function( _AddJurusan value)?  addJurusan,TResult? Function( _DeleteJurusan value)?  deleteJurusan,TResult? Function( _UpdateJurusan value)?  updateJurusan,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Fetch() when fetch != null:
return fetch(_that);case _SearchJurusan() when searchJurusan != null:
return searchJurusan(_that);case _AddJurusan() when addJurusan != null:
return addJurusan(_that);case _DeleteJurusan() when deleteJurusan != null:
return deleteJurusan(_that);case _UpdateJurusan() when updateJurusan != null:
return updateJurusan(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetch,TResult Function( String query)?  searchJurusan,TResult Function( JurusanRequestModel jurusan)?  addJurusan,TResult Function( int id)?  deleteJurusan,TResult Function( Jurusan jurusan)?  updateJurusan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchJurusan() when searchJurusan != null:
return searchJurusan(_that.query);case _AddJurusan() when addJurusan != null:
return addJurusan(_that.jurusan);case _DeleteJurusan() when deleteJurusan != null:
return deleteJurusan(_that.id);case _UpdateJurusan() when updateJurusan != null:
return updateJurusan(_that.jurusan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetch,required TResult Function( String query)  searchJurusan,required TResult Function( JurusanRequestModel jurusan)  addJurusan,required TResult Function( int id)  deleteJurusan,required TResult Function( Jurusan jurusan)  updateJurusan,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Fetch():
return fetch();case _SearchJurusan():
return searchJurusan(_that.query);case _AddJurusan():
return addJurusan(_that.jurusan);case _DeleteJurusan():
return deleteJurusan(_that.id);case _UpdateJurusan():
return updateJurusan(_that.jurusan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetch,TResult? Function( String query)?  searchJurusan,TResult? Function( JurusanRequestModel jurusan)?  addJurusan,TResult? Function( int id)?  deleteJurusan,TResult? Function( Jurusan jurusan)?  updateJurusan,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Fetch() when fetch != null:
return fetch();case _SearchJurusan() when searchJurusan != null:
return searchJurusan(_that.query);case _AddJurusan() when addJurusan != null:
return addJurusan(_that.jurusan);case _DeleteJurusan() when deleteJurusan != null:
return deleteJurusan(_that.id);case _UpdateJurusan() when updateJurusan != null:
return updateJurusan(_that.jurusan);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements JurusanEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JurusanEvent.started()';
}


}




/// @nodoc


class _Fetch implements JurusanEvent {
  const _Fetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JurusanEvent.fetch()';
}


}




/// @nodoc


class _SearchJurusan implements JurusanEvent {
  const _SearchJurusan(this.query);
  

 final  String query;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchJurusanCopyWith<_SearchJurusan> get copyWith => __$SearchJurusanCopyWithImpl<_SearchJurusan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchJurusan&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'JurusanEvent.searchJurusan(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchJurusanCopyWith<$Res> implements $JurusanEventCopyWith<$Res> {
  factory _$SearchJurusanCopyWith(_SearchJurusan value, $Res Function(_SearchJurusan) _then) = __$SearchJurusanCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchJurusanCopyWithImpl<$Res>
    implements _$SearchJurusanCopyWith<$Res> {
  __$SearchJurusanCopyWithImpl(this._self, this._then);

  final _SearchJurusan _self;
  final $Res Function(_SearchJurusan) _then;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchJurusan(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddJurusan implements JurusanEvent {
  const _AddJurusan(this.jurusan);
  

 final  JurusanRequestModel jurusan;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddJurusanCopyWith<_AddJurusan> get copyWith => __$AddJurusanCopyWithImpl<_AddJurusan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddJurusan&&(identical(other.jurusan, jurusan) || other.jurusan == jurusan));
}


@override
int get hashCode => Object.hash(runtimeType,jurusan);

@override
String toString() {
  return 'JurusanEvent.addJurusan(jurusan: $jurusan)';
}


}

/// @nodoc
abstract mixin class _$AddJurusanCopyWith<$Res> implements $JurusanEventCopyWith<$Res> {
  factory _$AddJurusanCopyWith(_AddJurusan value, $Res Function(_AddJurusan) _then) = __$AddJurusanCopyWithImpl;
@useResult
$Res call({
 JurusanRequestModel jurusan
});




}
/// @nodoc
class __$AddJurusanCopyWithImpl<$Res>
    implements _$AddJurusanCopyWith<$Res> {
  __$AddJurusanCopyWithImpl(this._self, this._then);

  final _AddJurusan _self;
  final $Res Function(_AddJurusan) _then;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jurusan = null,}) {
  return _then(_AddJurusan(
null == jurusan ? _self.jurusan : jurusan // ignore: cast_nullable_to_non_nullable
as JurusanRequestModel,
  ));
}


}

/// @nodoc


class _DeleteJurusan implements JurusanEvent {
  const _DeleteJurusan(this.id);
  

 final  int id;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteJurusanCopyWith<_DeleteJurusan> get copyWith => __$DeleteJurusanCopyWithImpl<_DeleteJurusan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteJurusan&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'JurusanEvent.deleteJurusan(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteJurusanCopyWith<$Res> implements $JurusanEventCopyWith<$Res> {
  factory _$DeleteJurusanCopyWith(_DeleteJurusan value, $Res Function(_DeleteJurusan) _then) = __$DeleteJurusanCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteJurusanCopyWithImpl<$Res>
    implements _$DeleteJurusanCopyWith<$Res> {
  __$DeleteJurusanCopyWithImpl(this._self, this._then);

  final _DeleteJurusan _self;
  final $Res Function(_DeleteJurusan) _then;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteJurusan(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateJurusan implements JurusanEvent {
  const _UpdateJurusan(this.jurusan);
  

 final  Jurusan jurusan;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateJurusanCopyWith<_UpdateJurusan> get copyWith => __$UpdateJurusanCopyWithImpl<_UpdateJurusan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateJurusan&&(identical(other.jurusan, jurusan) || other.jurusan == jurusan));
}


@override
int get hashCode => Object.hash(runtimeType,jurusan);

@override
String toString() {
  return 'JurusanEvent.updateJurusan(jurusan: $jurusan)';
}


}

/// @nodoc
abstract mixin class _$UpdateJurusanCopyWith<$Res> implements $JurusanEventCopyWith<$Res> {
  factory _$UpdateJurusanCopyWith(_UpdateJurusan value, $Res Function(_UpdateJurusan) _then) = __$UpdateJurusanCopyWithImpl;
@useResult
$Res call({
 Jurusan jurusan
});




}
/// @nodoc
class __$UpdateJurusanCopyWithImpl<$Res>
    implements _$UpdateJurusanCopyWith<$Res> {
  __$UpdateJurusanCopyWithImpl(this._self, this._then);

  final _UpdateJurusan _self;
  final $Res Function(_UpdateJurusan) _then;

/// Create a copy of JurusanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jurusan = null,}) {
  return _then(_UpdateJurusan(
null == jurusan ? _self.jurusan : jurusan // ignore: cast_nullable_to_non_nullable
as Jurusan,
  ));
}


}

/// @nodoc
mixin _$JurusanState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JurusanState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JurusanState()';
}


}

/// @nodoc
class $JurusanStateCopyWith<$Res>  {
$JurusanStateCopyWith(JurusanState _, $Res Function(JurusanState) __);
}


/// Adds pattern-matching-related methods to [JurusanState].
extension JurusanStatePatterns on JurusanState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( JurusanInitial value)?  initial,TResult Function( JurusanLoading value)?  loading,TResult Function( JurusanLoaded value)?  loaded,TResult Function( JurusanSuccess value)?  success,TResult Function( JurusanError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case JurusanInitial() when initial != null:
return initial(_that);case JurusanLoading() when loading != null:
return loading(_that);case JurusanLoaded() when loaded != null:
return loaded(_that);case JurusanSuccess() when success != null:
return success(_that);case JurusanError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( JurusanInitial value)  initial,required TResult Function( JurusanLoading value)  loading,required TResult Function( JurusanLoaded value)  loaded,required TResult Function( JurusanSuccess value)  success,required TResult Function( JurusanError value)  error,}){
final _that = this;
switch (_that) {
case JurusanInitial():
return initial(_that);case JurusanLoading():
return loading(_that);case JurusanLoaded():
return loaded(_that);case JurusanSuccess():
return success(_that);case JurusanError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( JurusanInitial value)?  initial,TResult? Function( JurusanLoading value)?  loading,TResult? Function( JurusanLoaded value)?  loaded,TResult? Function( JurusanSuccess value)?  success,TResult? Function( JurusanError value)?  error,}){
final _that = this;
switch (_that) {
case JurusanInitial() when initial != null:
return initial(_that);case JurusanLoading() when loading != null:
return loading(_that);case JurusanLoaded() when loaded != null:
return loaded(_that);case JurusanSuccess() when success != null:
return success(_that);case JurusanError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<JurusanResponseModel> jurusan)?  loaded,TResult Function( List<Jurusan> jurusan)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case JurusanInitial() when initial != null:
return initial();case JurusanLoading() when loading != null:
return loading();case JurusanLoaded() when loaded != null:
return loaded(_that.jurusan);case JurusanSuccess() when success != null:
return success(_that.jurusan);case JurusanError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<JurusanResponseModel> jurusan)  loaded,required TResult Function( List<Jurusan> jurusan)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case JurusanInitial():
return initial();case JurusanLoading():
return loading();case JurusanLoaded():
return loaded(_that.jurusan);case JurusanSuccess():
return success(_that.jurusan);case JurusanError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<JurusanResponseModel> jurusan)?  loaded,TResult? Function( List<Jurusan> jurusan)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case JurusanInitial() when initial != null:
return initial();case JurusanLoading() when loading != null:
return loading();case JurusanLoaded() when loaded != null:
return loaded(_that.jurusan);case JurusanSuccess() when success != null:
return success(_that.jurusan);case JurusanError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class JurusanInitial implements JurusanState {
  const JurusanInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JurusanInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JurusanState.initial()';
}


}




/// @nodoc


class JurusanLoading implements JurusanState {
  const JurusanLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JurusanLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JurusanState.loading()';
}


}




/// @nodoc


class JurusanLoaded implements JurusanState {
  const JurusanLoaded(final  List<JurusanResponseModel> jurusan): _jurusan = jurusan;
  

 final  List<JurusanResponseModel> _jurusan;
 List<JurusanResponseModel> get jurusan {
  if (_jurusan is EqualUnmodifiableListView) return _jurusan;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jurusan);
}


/// Create a copy of JurusanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JurusanLoadedCopyWith<JurusanLoaded> get copyWith => _$JurusanLoadedCopyWithImpl<JurusanLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JurusanLoaded&&const DeepCollectionEquality().equals(other._jurusan, _jurusan));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_jurusan));

@override
String toString() {
  return 'JurusanState.loaded(jurusan: $jurusan)';
}


}

/// @nodoc
abstract mixin class $JurusanLoadedCopyWith<$Res> implements $JurusanStateCopyWith<$Res> {
  factory $JurusanLoadedCopyWith(JurusanLoaded value, $Res Function(JurusanLoaded) _then) = _$JurusanLoadedCopyWithImpl;
@useResult
$Res call({
 List<JurusanResponseModel> jurusan
});




}
/// @nodoc
class _$JurusanLoadedCopyWithImpl<$Res>
    implements $JurusanLoadedCopyWith<$Res> {
  _$JurusanLoadedCopyWithImpl(this._self, this._then);

  final JurusanLoaded _self;
  final $Res Function(JurusanLoaded) _then;

/// Create a copy of JurusanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jurusan = null,}) {
  return _then(JurusanLoaded(
null == jurusan ? _self._jurusan : jurusan // ignore: cast_nullable_to_non_nullable
as List<JurusanResponseModel>,
  ));
}


}

/// @nodoc


class JurusanSuccess implements JurusanState {
  const JurusanSuccess(final  List<Jurusan> jurusan): _jurusan = jurusan;
  

 final  List<Jurusan> _jurusan;
 List<Jurusan> get jurusan {
  if (_jurusan is EqualUnmodifiableListView) return _jurusan;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jurusan);
}


/// Create a copy of JurusanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JurusanSuccessCopyWith<JurusanSuccess> get copyWith => _$JurusanSuccessCopyWithImpl<JurusanSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JurusanSuccess&&const DeepCollectionEquality().equals(other._jurusan, _jurusan));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_jurusan));

@override
String toString() {
  return 'JurusanState.success(jurusan: $jurusan)';
}


}

/// @nodoc
abstract mixin class $JurusanSuccessCopyWith<$Res> implements $JurusanStateCopyWith<$Res> {
  factory $JurusanSuccessCopyWith(JurusanSuccess value, $Res Function(JurusanSuccess) _then) = _$JurusanSuccessCopyWithImpl;
@useResult
$Res call({
 List<Jurusan> jurusan
});




}
/// @nodoc
class _$JurusanSuccessCopyWithImpl<$Res>
    implements $JurusanSuccessCopyWith<$Res> {
  _$JurusanSuccessCopyWithImpl(this._self, this._then);

  final JurusanSuccess _self;
  final $Res Function(JurusanSuccess) _then;

/// Create a copy of JurusanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jurusan = null,}) {
  return _then(JurusanSuccess(
null == jurusan ? _self._jurusan : jurusan // ignore: cast_nullable_to_non_nullable
as List<Jurusan>,
  ));
}


}

/// @nodoc


class JurusanError implements JurusanState {
  const JurusanError(this.message);
  

 final  String message;

/// Create a copy of JurusanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JurusanErrorCopyWith<JurusanError> get copyWith => _$JurusanErrorCopyWithImpl<JurusanError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JurusanError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'JurusanState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $JurusanErrorCopyWith<$Res> implements $JurusanStateCopyWith<$Res> {
  factory $JurusanErrorCopyWith(JurusanError value, $Res Function(JurusanError) _then) = _$JurusanErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$JurusanErrorCopyWithImpl<$Res>
    implements $JurusanErrorCopyWith<$Res> {
  _$JurusanErrorCopyWithImpl(this._self, this._then);

  final JurusanError _self;
  final $Res Function(JurusanError) _then;

/// Create a copy of JurusanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(JurusanError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
