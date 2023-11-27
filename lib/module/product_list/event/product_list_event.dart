abstract class ProductListEvent {}

class ProductListIncrementEvent extends ProductListEvent {}

class ProductGetDataEvent extends ProductListEvent {}

class ProductdeleteDataEvent extends ProductListEvent {
  final int id;
  ProductdeleteDataEvent({required this.id});
}
