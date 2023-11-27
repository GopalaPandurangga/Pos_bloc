import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DashboardBloc bloc = DashboardBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DashboardBloc>())
      GetIt.I.unregister<DashboardBloc>();
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
      child: BlocListener<DashboardBloc, DashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            final bloc = context.read<DashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DashboardBloc bloc,
    DashboardState state,
  ) {
    var currentUser = DB.getUser()?['name'] ?? 'Gopala Pandurangga';
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  // decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24.0,
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ("${currentUser}"),
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.grey[100],
                                    ),
                                  ),
                                  const Text(
                                    "Welcome to Pos App",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.notifications_outlined,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 100,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              32.0), // Atur radius sesuai keinginan
                          topRight: Radius.circular(
                              32.0), // Atur radius sesuai keinginan
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Builder(builder: (context) {
                            List images = [
                              "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                              "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                              "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                              "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                              "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                            ];

                            return CarouselSlider(
                              options: CarouselOptions(
                                height: 160.0,
                                autoPlay: false,
                                enlargeCenterPage: true,
                              ),
                              items: images.map((imageUrl) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            imageUrl,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 28.0,
                        ),
                        LayoutBuilder(
                          builder: (context, constraint) {
                            List menus = [
                              {
                                "icon": Icons.food_bank,
                                "label": "Product",
                                "onTap": () => Get.to(const ProductListView()),
                                "iconColor": Colors.red,
                              },
                              {
                                "icon": Icons.table_bar,
                                "label": "Table",
                                "onTap": () => Get.to(const TableView()),
                                "iconColor": Colors.purple,
                              },
                              {
                                "icon": Icons.point_of_sale,
                                "label": "Take Away",
                                "onTap": () => Get.to(const PosTakeAwayView()),
                                "iconColor": Colors.blue,
                              },
                              {
                                "icon": Icons.dinner_dining,
                                "label": "Dine in",
                                "onTap": () => Get.to(const PosTableView()),
                                "iconColor": Colors.green,
                              },
                              {
                                "icon": Icons.add,
                                "label": "Add Product",
                                "onTap": () => Get.to(ProductFormView()),
                                "iconColor": Colors.green,
                              },
                              {
                                "icon": Icons.report_rounded,
                                "label": "Report",
                                "onTap": () => Get.to(ReportView()),
                                "iconColor": Colors.blue,
                              },
                              {
                                "icon": Icons.shopping_bag_outlined,
                                "label": "Disscount",
                                "onTap": () => Get.to(DisscountListView()),
                                "iconColor": Colors.purple,
                              },
                              {
                                "icon": Icons.food_bank,
                                "label": "Others",
                                "onTap": () {},
                                "iconColor": Colors.red,
                              },
                            ];

                            return Wrap(
                              children: List.generate(
                                menus.length,
                                (index) {
                                  var item = menus[index];

                                  var size = constraint.biggest.width / 4;

                                  return SizedBox(
                                    width: size,
                                    height: size,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        animationDuration:
                                            const Duration(milliseconds: 1000),
                                        backgroundColor: Colors.transparent,
                                        splashFactory: InkSplash.splashFactory,
                                        shadowColor: Colors.transparent,
                                        elevation: 0.0,
                                      ),
                                      onPressed: () => item["onTap"](),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            item["icon"],
                                            size: 24,
                                            color: item["iconColor"],
                                          ),
                                          const SizedBox(
                                            height: 6.0,
                                          ),
                                          Text(
                                            "${item["label"]}",
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 11.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              const Text(
                                "Our Signature Menu",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () => Get.to(ProductListView()),
                                child: Text(
                                  "See all...",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
