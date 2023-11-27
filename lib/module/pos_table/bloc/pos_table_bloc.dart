import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/core.dart';

class PosTableBloc extends Bloc<PosTableEvent, PosTableState>
    implements IBlocBase {
  PosTableBloc() : super(PosTableState()) {
    on<PosTableIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PosTableGetDataEvent>((event, emit) async {
      state.tabletList = await TableService().getTables();
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
