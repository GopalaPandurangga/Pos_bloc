import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/product/product.dart';
part 'pos_dine_in_state.freezed.dart';

@unfreezed
class PosDineInState with _$PosDineInState {
  factory PosDineInState({
    @Default(0) int counter,
    @Default([]) List<Product> products,
  }) = _PosDineInState;
}
