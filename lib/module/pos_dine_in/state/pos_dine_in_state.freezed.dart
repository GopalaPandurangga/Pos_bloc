// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_dine_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosDineInState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  int? get tableNumber => throw _privateConstructorUsedError;
  set tableNumber(int? value) => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  set products(List<Product> value) => throw _privateConstructorUsedError;
  bool get orderSuccess => throw _privateConstructorUsedError;
  set orderSuccess(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosDineInStateCopyWith<PosDineInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosDineInStateCopyWith<$Res> {
  factory $PosDineInStateCopyWith(
          PosDineInState value, $Res Function(PosDineInState) then) =
      _$PosDineInStateCopyWithImpl<$Res, PosDineInState>;
  @useResult
  $Res call(
      {int counter,
      int? tableNumber,
      List<Product> products,
      bool orderSuccess});
}

/// @nodoc
class _$PosDineInStateCopyWithImpl<$Res, $Val extends PosDineInState>
    implements $PosDineInStateCopyWith<$Res> {
  _$PosDineInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? tableNumber = freezed,
    Object? products = null,
    Object? orderSuccess = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      orderSuccess: null == orderSuccess
          ? _value.orderSuccess
          : orderSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosDineInStateImplCopyWith<$Res>
    implements $PosDineInStateCopyWith<$Res> {
  factory _$$PosDineInStateImplCopyWith(_$PosDineInStateImpl value,
          $Res Function(_$PosDineInStateImpl) then) =
      __$$PosDineInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter,
      int? tableNumber,
      List<Product> products,
      bool orderSuccess});
}

/// @nodoc
class __$$PosDineInStateImplCopyWithImpl<$Res>
    extends _$PosDineInStateCopyWithImpl<$Res, _$PosDineInStateImpl>
    implements _$$PosDineInStateImplCopyWith<$Res> {
  __$$PosDineInStateImplCopyWithImpl(
      _$PosDineInStateImpl _value, $Res Function(_$PosDineInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? tableNumber = freezed,
    Object? products = null,
    Object? orderSuccess = null,
  }) {
    return _then(_$PosDineInStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      orderSuccess: null == orderSuccess
          ? _value.orderSuccess
          : orderSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PosDineInStateImpl implements _PosDineInState {
  _$PosDineInStateImpl(
      {this.counter = 0,
      this.tableNumber = null,
      this.products = const [],
      this.orderSuccess = false});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  int? tableNumber;
  @override
  @JsonKey()
  List<Product> products;
  @override
  @JsonKey()
  bool orderSuccess;

  @override
  String toString() {
    return 'PosDineInState(counter: $counter, tableNumber: $tableNumber, products: $products, orderSuccess: $orderSuccess)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosDineInStateImplCopyWith<_$PosDineInStateImpl> get copyWith =>
      __$$PosDineInStateImplCopyWithImpl<_$PosDineInStateImpl>(
          this, _$identity);
}

abstract class _PosDineInState implements PosDineInState {
  factory _PosDineInState(
      {int counter,
      int? tableNumber,
      List<Product> products,
      bool orderSuccess}) = _$PosDineInStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  int? get tableNumber;
  set tableNumber(int? value);
  @override
  List<Product> get products;
  set products(List<Product> value);
  @override
  bool get orderSuccess;
  set orderSuccess(bool value);
  @override
  @JsonKey(ignore: true)
  _$$PosDineInStateImplCopyWith<_$PosDineInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
