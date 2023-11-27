// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TableState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<Tables> get tabletList => throw _privateConstructorUsedError;
  set tabletList(List<Tables> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableStateCopyWith<TableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStateCopyWith<$Res> {
  factory $TableStateCopyWith(
          TableState value, $Res Function(TableState) then) =
      _$TableStateCopyWithImpl<$Res, TableState>;
  @useResult
  $Res call({int counter, List<Tables> tabletList});
}

/// @nodoc
class _$TableStateCopyWithImpl<$Res, $Val extends TableState>
    implements $TableStateCopyWith<$Res> {
  _$TableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? tabletList = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      tabletList: null == tabletList
          ? _value.tabletList
          : tabletList // ignore: cast_nullable_to_non_nullable
              as List<Tables>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableStateImplCopyWith<$Res>
    implements $TableStateCopyWith<$Res> {
  factory _$$TableStateImplCopyWith(
          _$TableStateImpl value, $Res Function(_$TableStateImpl) then) =
      __$$TableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<Tables> tabletList});
}

/// @nodoc
class __$$TableStateImplCopyWithImpl<$Res>
    extends _$TableStateCopyWithImpl<$Res, _$TableStateImpl>
    implements _$$TableStateImplCopyWith<$Res> {
  __$$TableStateImplCopyWithImpl(
      _$TableStateImpl _value, $Res Function(_$TableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? tabletList = null,
  }) {
    return _then(_$TableStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      tabletList: null == tabletList
          ? _value.tabletList
          : tabletList // ignore: cast_nullable_to_non_nullable
              as List<Tables>,
    ));
  }
}

/// @nodoc

class _$TableStateImpl implements _TableState {
  _$TableStateImpl({this.counter = 0, this.tabletList = const []});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<Tables> tabletList;

  @override
  String toString() {
    return 'TableState(counter: $counter, tabletList: $tabletList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableStateImplCopyWith<_$TableStateImpl> get copyWith =>
      __$$TableStateImplCopyWithImpl<_$TableStateImpl>(this, _$identity);
}

abstract class _TableState implements TableState {
  factory _TableState({int counter, List<Tables> tabletList}) =
      _$TableStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<Tables> get tabletList;
  set tabletList(List<Tables> value);
  @override
  @JsonKey(ignore: true)
  _$$TableStateImplCopyWith<_$TableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
