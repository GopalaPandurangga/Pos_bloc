// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_take_away_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosTakeAwayState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  double get itemTotal => throw _privateConstructorUsedError;
  set itemTotal(double value) => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  set products(List<Product> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosTakeAwayStateCopyWith<PosTakeAwayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosTakeAwayStateCopyWith<$Res> {
  factory $PosTakeAwayStateCopyWith(
          PosTakeAwayState value, $Res Function(PosTakeAwayState) then) =
      _$PosTakeAwayStateCopyWithImpl<$Res, PosTakeAwayState>;
  @useResult
  $Res call({int counter, double itemTotal, List<Product> products});
}

/// @nodoc
class _$PosTakeAwayStateCopyWithImpl<$Res, $Val extends PosTakeAwayState>
    implements $PosTakeAwayStateCopyWith<$Res> {
  _$PosTakeAwayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? itemTotal = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      itemTotal: null == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosTakeAwayStateImplCopyWith<$Res>
    implements $PosTakeAwayStateCopyWith<$Res> {
  factory _$$PosTakeAwayStateImplCopyWith(_$PosTakeAwayStateImpl value,
          $Res Function(_$PosTakeAwayStateImpl) then) =
      __$$PosTakeAwayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, double itemTotal, List<Product> products});
}

/// @nodoc
class __$$PosTakeAwayStateImplCopyWithImpl<$Res>
    extends _$PosTakeAwayStateCopyWithImpl<$Res, _$PosTakeAwayStateImpl>
    implements _$$PosTakeAwayStateImplCopyWith<$Res> {
  __$$PosTakeAwayStateImplCopyWithImpl(_$PosTakeAwayStateImpl _value,
      $Res Function(_$PosTakeAwayStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? itemTotal = null,
    Object? products = null,
  }) {
    return _then(_$PosTakeAwayStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      itemTotal: null == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$PosTakeAwayStateImpl implements _PosTakeAwayState {
  _$PosTakeAwayStateImpl(
      {this.counter = 0, this.itemTotal = 0, this.products = const []});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  double itemTotal;
  @override
  @JsonKey()
  List<Product> products;

  @override
  String toString() {
    return 'PosTakeAwayState(counter: $counter, itemTotal: $itemTotal, products: $products)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosTakeAwayStateImplCopyWith<_$PosTakeAwayStateImpl> get copyWith =>
      __$$PosTakeAwayStateImplCopyWithImpl<_$PosTakeAwayStateImpl>(
          this, _$identity);
}

abstract class _PosTakeAwayState implements PosTakeAwayState {
  factory _PosTakeAwayState(
      {int counter,
      double itemTotal,
      List<Product> products}) = _$PosTakeAwayStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  double get itemTotal;
  set itemTotal(double value);
  @override
  List<Product> get products;
  set products(List<Product> value);
  @override
  @JsonKey(ignore: true)
  _$$PosTakeAwayStateImplCopyWith<_$PosTakeAwayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
