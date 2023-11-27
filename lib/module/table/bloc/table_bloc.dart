import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/services/table_service/table_service.dart';
import '../event/table_event.dart';
import '../state/table_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class TableBloc extends Bloc<TableEvent, TableState> with _BlocLifecycle {
  TableBloc() : super(TableState()) {
    on<TableIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<TableGetDataEvent>((event, emit) async {
      state.tabletList = await TableService().getTables();
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
