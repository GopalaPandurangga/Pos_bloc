import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/product/product.dart';
part 'pos_take_away_state.freezed.dart';

@unfreezed
class PosTakeAwayState with _$PosTakeAwayState {
  factory PosTakeAwayState({
    @Default(0) int counter,
    @Default(0) double itemTotal,
    @Default([]) List<Product> products,
  }) = _PosTakeAwayState;
}
