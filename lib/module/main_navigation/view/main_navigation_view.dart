import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../core.dart';
import '../bloc/main_navigation_bloc.dart';
import '../event/main_navigation_event.dart';
import '../state/main_navigation_state.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  MainNavigationBloc bloc = MainNavigationBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<MainNavigationBloc>())
      GetIt.I.unregister<MainNavigationBloc>();
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
      child: BlocListener<MainNavigationBloc, MainNavigationState>(
        listener: (context, state) {},
        child: BlocBuilder<MainNavigationBloc, MainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<MainNavigationBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    MainNavigationBloc bloc,
    MainNavigationState state,
  ) {
    return DefaultTabController(
      length: 4,
      initialIndex: state.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: state.selectedIndex,
          children: [
            DashboardView(),
            OrderView(),
            CheckoutView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.selectedIndex,
          onTap: (newIndex) =>
              bloc.add(MainNavigationUpdateIndexEvent(selectedIndex: newIndex)),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.home,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.orderAlphabeticalAscending),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "Checkout",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "User",
            ),
          ],
        ),
      ),
    );
  }
}
