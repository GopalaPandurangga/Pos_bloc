import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../core.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  ProductListBloc bloc = ProductListBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductListBloc>())
      GetIt.I.unregister<ProductListBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    super.initState();
    bloc.add(ProductGetDataEvent());
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
      child: BlocListener<ProductListBloc, ProductListState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            final bloc = context.read<ProductListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductListBloc bloc,
    ProductListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.productList.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = state.productList[index];
                  return QDismissible(
                    child: Card(
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
                                    item.photo == null
                                        ? "https://i.ibb.co/S32HNjD/no-image.jpg"
                                        : "${ProductService.baseUrl}/${item.photo}",
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
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                        size: 16.0,
                                      ),
                                      Text(
                                        "4.8",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onDismiss: () {
                      bloc.add(ProductdeleteDataEvent(id: item.id!));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            await Get.to(const ProductFormView());
            bloc.add(ProductGetDataEvent());
          }),
    );
  }
}
