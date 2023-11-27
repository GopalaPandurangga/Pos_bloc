import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/services/product_service/product_service.dart';
import '../event/pos_take_away_event.dart';
import '../state/pos_take_away_state.dart';
import 'package:pos_terpadu_bloc/bloc_util.dart';

class PosTakeAwayBloc extends Bloc<PosTakeAwayEvent, PosTakeAwayState>
    implements IBlocBase {
  PosTakeAwayBloc() : super(PosTakeAwayState()) {
    on<PosTakeAwayIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PosTakeAwayGetDataEvent>((event, emit) async {
      state.products = await ProductService().getProducts();
      for (var product in state.products) {
        product.qty ??= 0;
      }
      emit(state.copyWith());
    });
    on<PosTakeAwayIncreaseQtyEvent>((event, emit) async {
      emit(state.copyWith());
    });
    on<PosTakeAwayDecreaseQtyEvent>((event, emit) async {
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

  @override
  void initState() {
    //initState event
    add(PosTakeAwayGetDataEvent());
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
