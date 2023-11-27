import 'package:freezed_annotation/freezed_annotation.dart';
part 'checkout_state.freezed.dart';

@unfreezed
class CheckoutState with _$CheckoutState {
  factory CheckoutState({
    @Default(0) int counter,
  }) = _CheckoutState;
}
