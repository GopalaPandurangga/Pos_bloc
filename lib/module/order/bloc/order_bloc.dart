import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/core.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> implements IBlocBase {
  OrderBloc() : super(OrderState()) {
    on<OrderIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<OrderGetDataEvent>((event, emit) async {
      state.orderList = await OrderService().getOrder();
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
}
