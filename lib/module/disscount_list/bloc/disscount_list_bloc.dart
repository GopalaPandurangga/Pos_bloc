import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/disscount_list_event.dart';
import '../state/disscount_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class DisscountListBloc extends Bloc<DisscountListEvent, DisscountListState>
    with _BlocLifecycle {
  DisscountListBloc() : super(DisscountListState()) {
    on<DisscountListIncrementEvent>((event, emit) {
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
