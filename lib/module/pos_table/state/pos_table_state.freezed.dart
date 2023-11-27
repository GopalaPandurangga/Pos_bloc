// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosTableState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<Tables> get tabletList => throw _privateConstructorUsedError;
  set tabletList(List<Tables> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosTableStateCopyWith<PosTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosTableStateCopyWith<$Res> {
  factory $PosTableStateCopyWith(
          PosTableState value, $Res Function(PosTableState) then) =
      _$PosTableStateCopyWithImpl<$Res, PosTableState>;
  @useResult
  $Res call({int counter, List<Tables> tabletList});
}

/// @nodoc
class _$PosTableStateCopyWithImpl<$Res, $Val extends PosTableState>
    implements $PosTableStateCopyWith<$Res> {
  _$PosTableStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PosTableStateImplCopyWith<$Res>
    implements $PosTableStateCopyWith<$Res> {
  factory _$$PosTableStateImplCopyWith(
          _$PosTableStateImpl value, $Res Function(_$PosTableStateImpl) then) =
      __$$PosTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<Tables> tabletList});
}

/// @nodoc
class __$$PosTableStateImplCopyWithImpl<$Res>
    extends _$PosTableStateCopyWithImpl<$Res, _$PosTableStateImpl>
    implements _$$PosTableStateImplCopyWith<$Res> {
  __$$PosTableStateImplCopyWithImpl(
      _$PosTableStateImpl _value, $Res Function(_$PosTableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? tabletList = null,
  }) {
    return _then(_$PosTableStateImpl(
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

class _$PosTableStateImpl implements _PosTableState {
  _$PosTableStateImpl({this.counter = 0, this.tabletList = const []});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<Tables> tabletList;

  @override
  String toString() {
    return 'PosTableState(counter: $counter, tabletList: $tabletList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosTableStateImplCopyWith<_$PosTableStateImpl> get copyWith =>
      __$$PosTableStateImplCopyWithImpl<_$PosTableStateImpl>(this, _$identity);
}

abstract class _PosTableState implements PosTableState {
  factory _PosTableState({int counter, List<Tables> tabletList}) =
      _$PosTableStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<Tables> get tabletList;
  set tabletList(List<Tables> value);
  @override
  @JsonKey(ignore: true)
  _$$PosTableStateImplCopyWith<_$PosTableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
