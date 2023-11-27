import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/services/product_service/product_service.dart';
import '../bloc/pos_take_away_bloc.dart';
import '../event/pos_take_away_event.dart';
import '../state/pos_take_away_state.dart';
import 'package:get_it/get_it.dart';

class PosTakeAwayView extends StatefulWidget {
  const PosTakeAwayView({Key? key}) : super(key: key);

  @override
  State<PosTakeAwayView> createState() => _PosTakeAwayViewState();
}

class _PosTakeAwayViewState extends State<PosTakeAwayView> {
  PosTakeAwayBloc bloc = PosTakeAwayBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosTakeAwayBloc>()) {
      GetIt.I.unregister<PosTakeAwayBloc>();
    }
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
    bloc.add(PosTakeAwayGetDataEvent());
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
      child: BlocListener<PosTakeAwayBloc, PosTakeAwayState>(
        listener: (context, state) {},
        child: BlocBuilder<PosTakeAwayBloc, PosTakeAwayState>(
          builder: (context, state) {
            final bloc = context.read<PosTakeAwayBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosTakeAwayBloc bloc,
    PosTakeAwayState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PosTakeAway'),
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
                                                  PosTakeAwayDecreaseQtyEvent(
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
                                                  PosTakeAwayIncreaseQtyEvent(
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
                onPressed: () {},
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
