import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_terpadu_bloc/model/order/order.dart';
part 'order_state.freezed.dart';

@unfreezed
class OrderState with _$OrderState {
  factory OrderState({
    @Default(0) int counter,
    @Default([]) List<Order> orderList,
  }) = _OrderState;
}
