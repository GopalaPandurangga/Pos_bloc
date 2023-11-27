import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/checkout_bloc.dart';
import '../event/checkout_event.dart';
import '../state/checkout_state.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  CheckoutBloc bloc = CheckoutBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CheckoutBloc>())
      GetIt.I.unregister<CheckoutBloc>();
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
      child: BlocListener<CheckoutBloc, CheckoutState>(
        listener: (context, state) {},
        child: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            final bloc = context.read<CheckoutBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CheckoutBloc bloc,
    CheckoutState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
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
            onPressed: () => bloc.add(CheckoutIncrementEvent()),
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
