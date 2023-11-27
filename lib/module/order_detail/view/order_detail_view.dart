import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/order_detail_bloc.dart';
import '../event/order_detail_event.dart';
import '../state/order_detail_state.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({Key? key}) : super(key: key);

  @override
  State<OrderDetailView> createState() => _OrderDetailViewState();
}

class _OrderDetailViewState extends State<OrderDetailView> {
  OrderDetailBloc bloc = OrderDetailBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<OrderDetailBloc>())
      GetIt.I.unregister<OrderDetailBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<OrderDetailBloc, OrderDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<OrderDetailBloc, OrderDetailState>(
          builder: (context, state) {
            final bloc = context.read<OrderDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    OrderDetailBloc bloc,
    OrderDetailState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrderDetail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(OrderDetailIncrementEvent()),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
