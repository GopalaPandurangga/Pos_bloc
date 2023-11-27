import 'package:pos_terpadu_bloc/model/product/product.dart';

abstract class PosTakeAwayEvent {}

class PosTakeAwayIncrementEvent extends PosTakeAwayEvent {}

class PosTakeAwayGetDataEvent extends PosTakeAwayEvent {}

class PosTakeAwayIncreaseQtyEvent extends PosTakeAwayEvent {
  PosTakeAwayIncreaseQtyEvent(Product product) {
    product.qty = product.qty! + 1;
    print(product.qty);
  }
}

class PosTakeAwayDecreaseQtyEvent extends PosTakeAwayEvent {
  PosTakeAwayDecreaseQtyEvent(Product product) {
    if (product.qty == 0) return;
    product.qty = product.qty! - 1;
    print(product.qty);
  }
}
