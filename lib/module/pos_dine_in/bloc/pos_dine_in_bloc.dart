import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/core.dart';
import 'package:pos_terpadu_bloc/model/order/order.dart';
import 'package:pos_terpadu_bloc/model/order/order_detail.dart';
import 'package:pos_terpadu_bloc/services/order_service/order_service.dart';
import '../../../services/product_service/product_service.dart';
import '../event/pos_dine_in_event.dart';
import '../state/pos_dine_in_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PosDineInBloc extends Bloc<PosDineInEvent, PosDineInState>
    with _BlocLifecycle {
  PosDineInBloc() : super(PosDineInState()) {
    on<PosDineInIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PosDineInGetDataEvent>((event, emit) async {
      state.products = await ProductService().getProducts();
      for (var product in state.products) {
        product.qty ??= 0;
      }
      emit(state.copyWith());
    });
    on<PosDineInIncreaseQtyEvent>((event, emit) async {
      emit(state.copyWith());
    });
    on<PosDineInDecreaseQtyEvent>((event, emit) async {
      emit(state.copyWith());
    });
    on<PosDineInCheckoutEvent>((event, emit) async {
      print("PosDineInCheckoutEvent");
      List<OrderDetail> orderDetails = state.products
          .map(
            (e) => OrderDetail(
              productId: e.id,
              price: e.price,
              quantity: e.qty,
            ),
          )
          .toList();
      bool isSuccess = await OrderService().add(Order(
        status: "Pending",
        ownerId: AuthService.currentUser?.id,
        tableNumber: state.tableNumber,
        total: total,
        orderDetail: orderDetails,
      ));
      if (isSuccess) {
        state.orderSuccess = true;
        print("Berhasil Checkout!");
      } else {
        print("Gagal Checkout!");
      }
      emit(state.copyWith());
    });
  }
  double get total {
    double itemTotal = 0;
    for (var product in state.products) {
      itemTotal += product.qty! * product.price!;
    }
    return itemTotal;
  }
}

@override
void initState() {
  //initState event
}

@override
void dispose() {
  //dispose event
}
