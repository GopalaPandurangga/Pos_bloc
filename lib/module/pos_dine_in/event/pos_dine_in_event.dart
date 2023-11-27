import '../../../model/product/product.dart';

abstract class PosDineInEvent {}

class PosDineInIncrementEvent extends PosDineInEvent {}

class PosDineInGetDataEvent extends PosDineInEvent {}
class PosDineInCheckoutEvent extends PosDineInEvent {}

class PosDineInIncreaseQtyEvent extends PosDineInEvent {
  PosDineInIncreaseQtyEvent(Product product) {
    product.qty = product.qty! + 1;
  }
}

class PosDineInDecreaseQtyEvent extends PosDineInEvent {
  PosDineInDecreaseQtyEvent(Product product) {
    if (product.qty == 0) return;
    product.qty = product.qty! - 1;
  }
}
