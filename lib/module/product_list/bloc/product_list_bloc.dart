import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class ProductListBloc extends Bloc<ProductListEvent, ProductListState>
    with _BlocLifecycle {
  ProductListBloc() : super(ProductListState()) {
    on<ProductListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<ProductGetDataEvent>((event, emit) async {
      state.productList = await ProductService().getProducts();
      emit(state.copyWith());
    });
    on<ProductdeleteDataEvent>((event, emit) async {
      await ProductService().delete(event.id);
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }
}
