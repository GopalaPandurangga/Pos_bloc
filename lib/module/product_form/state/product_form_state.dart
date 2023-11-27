import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_form_state.freezed.dart';

@unfreezed
class ProductFormState with _$ProductFormState {
  factory ProductFormState({
    @Default(0) int counter,
    @Default("") String photo,
    @Default("") String productName,
    @Default(0) double price,
    @Default("") String category,
    @Default("") String description,
  }) = _ProductFormState;
}
