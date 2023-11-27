import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../bloc/order_bloc.dart';
import '../event/order_event.dart';
import '../state/order_state.dart';
import 'package:get_it/get_it.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  OrderBloc bloc = OrderBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<OrderBloc>()) {
      GetIt.I.unregister<OrderBloc>();
    }
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
    bloc.add(OrderGetDataEvent());
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
      child: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) {},
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            final bloc = context.read<OrderBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    OrderBloc bloc,
    OrderState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListView.builder(
            itemCount: state.orderList.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              var item = state.orderList[index];

              return Card(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Table : ${item.tableNumber}',
                            style: const TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Total : ${item.total}",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "Status : ${item.status}",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "Items : ${item.createdAt}",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
