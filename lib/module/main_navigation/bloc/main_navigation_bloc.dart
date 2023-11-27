import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/main_navigation_event.dart';
import '../state/main_navigation_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class MainNavigationBloc extends Bloc<MainNavigationEvent, MainNavigationState>
    with _BlocLifecycle {
  MainNavigationBloc() : super(MainNavigationState()) {
    on<MainNavigationIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<MainNavigationUpdateIndexEvent>((event, emit) {
      state.selectedIndex = event.selectedIndex;
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
