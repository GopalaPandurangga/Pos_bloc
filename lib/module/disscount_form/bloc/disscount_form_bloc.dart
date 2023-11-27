import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/disscount_form_event.dart';
import '../state/disscount_form_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class DisscountFormBloc extends Bloc<DisscountFormEvent, DisscountFormState>
    with _BlocLifecycle {
  DisscountFormBloc() : super(DisscountFormState()) {
    on<DisscountFormIncrementEvent>((event, emit) {
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
