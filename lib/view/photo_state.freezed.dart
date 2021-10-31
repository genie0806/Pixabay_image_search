// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoStateTearOff {
  const _$PhotoStateTearOff();

  _PhotoState call({SearchModel? searchModel}) {
    return _PhotoState(
      searchModel: searchModel,
    );
  }
}

/// @nodoc
const $PhotoState = _$PhotoStateTearOff();

/// @nodoc
mixin _$PhotoState {
  SearchModel? get searchModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoStateCopyWith<PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res>;
  $Res call({SearchModel? searchModel});
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res> implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  final PhotoState _value;
  // ignore: unused_field
  final $Res Function(PhotoState) _then;

  @override
  $Res call({
    Object? searchModel = freezed,
  }) {
    return _then(_value.copyWith(
      searchModel: searchModel == freezed
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as SearchModel?,
    ));
  }
}

/// @nodoc
abstract class _$PhotoStateCopyWith<$Res> implements $PhotoStateCopyWith<$Res> {
  factory _$PhotoStateCopyWith(
          _PhotoState value, $Res Function(_PhotoState) then) =
      __$PhotoStateCopyWithImpl<$Res>;
  @override
  $Res call({SearchModel? searchModel});
}

/// @nodoc
class __$PhotoStateCopyWithImpl<$Res> extends _$PhotoStateCopyWithImpl<$Res>
    implements _$PhotoStateCopyWith<$Res> {
  __$PhotoStateCopyWithImpl(
      _PhotoState _value, $Res Function(_PhotoState) _then)
      : super(_value, (v) => _then(v as _PhotoState));

  @override
  _PhotoState get _value => super._value as _PhotoState;

  @override
  $Res call({
    Object? searchModel = freezed,
  }) {
    return _then(_PhotoState(
      searchModel: searchModel == freezed
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as SearchModel?,
    ));
  }
}

/// @nodoc

class _$_PhotoState implements _PhotoState {
  _$_PhotoState({this.searchModel});

  @override
  final SearchModel? searchModel;

  @override
  String toString() {
    return 'PhotoState(searchModel: $searchModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoState &&
            (identical(other.searchModel, searchModel) ||
                other.searchModel == searchModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchModel);

  @JsonKey(ignore: true)
  @override
  _$PhotoStateCopyWith<_PhotoState> get copyWith =>
      __$PhotoStateCopyWithImpl<_PhotoState>(this, _$identity);
}

abstract class _PhotoState implements PhotoState {
  factory _PhotoState({SearchModel? searchModel}) = _$_PhotoState;

  @override
  SearchModel? get searchModel;
  @override
  @JsonKey(ignore: true)
  _$PhotoStateCopyWith<_PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}
