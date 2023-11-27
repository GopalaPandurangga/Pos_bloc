import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_detail_state.freezed.dart';

@unfreezed
class OrderDetailState with _$OrderDetailState {
  factory OrderDetailState({
    @Default(0) int counter,
  }) = _OrderDetailState;
}
