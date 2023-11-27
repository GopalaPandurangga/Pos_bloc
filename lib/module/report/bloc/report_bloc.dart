import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/report_event.dart';
import '../state/report_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class ReportBloc extends Bloc<ReportEvent, ReportState> with _BlocLifecycle {
  ReportBloc() : super(ReportState()) {
    on<ReportIncrementEvent>((event, emit) {
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
