import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core.dart';
import '../../../model/product/product.dart';
part 'product_list_state.freezed.dart';

@unfreezed
class ProductListState with _$ProductListState {
  factory ProductListState({
    @Default(0) int counter,
    @Default([]) List<Product> productList,
  }) = _ProductListState;
}
