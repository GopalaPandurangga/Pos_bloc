// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disscount_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DisscountFormState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DisscountFormStateCopyWith<DisscountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisscountFormStateCopyWith<$Res> {
  factory $DisscountFormStateCopyWith(
          DisscountFormState value, $Res Function(DisscountFormState) then) =
      _$DisscountFormStateCopyWithImpl<$Res, DisscountFormState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$DisscountFormStateCopyWithImpl<$Res, $Val extends DisscountFormState>
    implements $DisscountFormStateCopyWith<$Res> {
  _$DisscountFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisscountFormStateImplCopyWith<$Res>
    implements $DisscountFormStateCopyWith<$Res> {
  factory _$$DisscountFormStateImplCopyWith(_$DisscountFormStateImpl value,
          $Res Function(_$DisscountFormStateImpl) then) =
      __$$DisscountFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$DisscountFormStateImplCopyWithImpl<$Res>
    extends _$DisscountFormStateCopyWithImpl<$Res, _$DisscountFormStateImpl>
    implements _$$DisscountFormStateImplCopyWith<$Res> {
  __$$DisscountFormStateImplCopyWithImpl(_$DisscountFormStateImpl _value,
      $Res Function(_$DisscountFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$DisscountFormStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DisscountFormStateImpl implements _DisscountFormState {
  _$DisscountFormStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'DisscountFormState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisscountFormStateImplCopyWith<_$DisscountFormStateImpl> get copyWith =>
      __$$DisscountFormStateImplCopyWithImpl<_$DisscountFormStateImpl>(
          this, _$identity);
}

abstract class _DisscountFormState implements DisscountFormState {
  factory _DisscountFormState({int counter}) = _$DisscountFormStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$DisscountFormStateImplCopyWith<_$DisscountFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
