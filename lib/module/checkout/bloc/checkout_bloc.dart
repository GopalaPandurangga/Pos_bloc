import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/checkout_event.dart';
import '../state/checkout_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState>
    with _BlocLifecycle {
  CheckoutBloc() : super(CheckoutState()) {
    on<CheckoutIncrementEvent>((event, emit) {
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
