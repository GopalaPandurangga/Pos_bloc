import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core.dart';
import '../../../model/product/product.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState>
    with _BlocLifecycle {
  ProductFormBloc() : super(ProductFormState()) {
    on<ProductFormIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<ProductFormSaveButtonEvent>((event, emit) async {
      await ProductService().add(Product(
          photo: state.photo,
          productName: state.productName,
          price: state.price,
          category: state.category,
          description: state.description));
      Get.back();
      emit(state.copyWith());
    });

    initState();
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
