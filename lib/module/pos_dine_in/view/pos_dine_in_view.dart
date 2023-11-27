import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pos_terpadu_bloc/core.dart';
import '../../../services/product_service/product_service.dart';
import '../bloc/pos_dine_in_bloc.dart';
import '../event/pos_dine_in_event.dart';
import '../state/pos_dine_in_state.dart';

class PosDineInView extends StatefulWidget {
  final int? tableNumber;
  const PosDineInView({
    Key? key,
    required this.tableNumber,
  }) : super(key: key);

  @override
  State<PosDineInView> createState() => _PosDineInViewState();
}

class _PosDineInViewState extends State<PosDineInView> {
  PosDineInBloc bloc = PosDineInBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosDineInBloc>())
      GetIt.I.unregister<PosDineInBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.state.tableNumber = widget.tableNumber;
    bloc.initState();
    super.initState();
    bloc.add(PosDineInGetDataEvent());
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
      child: BlocListener<PosDineInBloc, PosDineInState>(
        listener: (context, state) {
          if(state.orderSuccess){
            Get.offAll(MainNavigationView());
          }
        },
        child: BlocBuilder<PosDineInBloc, PosDineInState>(
          builder: (context, state) {
            final bloc = context.read<PosDineInBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosDineInBloc bloc,
    PosDineInState state,
  ) {
    var tableNumber;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pos Dine In #${widget.tableNumber}"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.products.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = state.products[index];

                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  ProductService.baseUrl +
                                      "/storage/" +
                                      item.photo!,
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              color: Colors.blue[400],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  item.productName!,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  (item.description!),
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  ("${item.price}"),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.blueGrey,
                                        radius: 12.0,
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              bloc.add(
                                                  PosDineInDecreaseQtyEvent(
                                                      item));
                                            },
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 9.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "${item.qty}",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.blueGrey,
                                        radius: 12.0,
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              bloc.add(
                                                  PosDineInIncreaseQtyEvent(
                                                      item));
                                            },
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 9.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Total ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Text(
                  "${bloc.total} ",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Container(
              height: 72,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => bloc.add(PosDineInCheckoutEvent()),
                child: const Text(
                  "Checkout",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
