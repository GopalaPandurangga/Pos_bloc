import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/order_detail_event.dart';
import '../state/order_detail_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState>
    with _BlocLifecycle {
  OrderDetailBloc() : super(OrderDetailState()) {
    on<OrderDetailIncrementEvent>((event, emit) {
      state.counter++;
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
