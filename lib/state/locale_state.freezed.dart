// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'locale_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

  _LocaleState call({String? code = null}) {
    return _LocaleState(
      code: code,
    );
  }
}

/// @nodoc
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  String? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
  $Res call({String? code});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LocaleStateCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateCopyWith(
          _LocaleState value, $Res Function(_LocaleState) then) =
      __$LocaleStateCopyWithImpl<$Res>;
  @override
  $Res call({String? code});
}

/// @nodoc
class __$LocaleStateCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateCopyWith<$Res> {
  __$LocaleStateCopyWithImpl(
      _LocaleState _value, $Res Function(_LocaleState) _then)
      : super(_value, (v) => _then(v as _LocaleState));

  @override
  _LocaleState get _value => super._value as _LocaleState;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_LocaleState(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LocaleState extends _LocaleState {
  const _$_LocaleState({this.code = null}) : super._();

  @JsonKey(defaultValue: null)
  @override
  final String? code;

  @override
  String toString() {
    return 'LocaleState(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleState &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      __$LocaleStateCopyWithImpl<_LocaleState>(this, _$identity);
}

abstract class _LocaleState extends LocaleState {
  const factory _LocaleState({String? code}) = _$_LocaleState;
  const _LocaleState._() : super._();

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}
