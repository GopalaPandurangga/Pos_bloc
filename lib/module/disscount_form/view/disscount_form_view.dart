import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/disscount_form_bloc.dart';
import '../event/disscount_form_event.dart';
import '../state/disscount_form_state.dart';

class DisscountFormView extends StatefulWidget {
  const DisscountFormView({Key? key}) : super(key: key);

  @override
  State<DisscountFormView> createState() => _DisscountFormViewState();
}

class _DisscountFormViewState extends State<DisscountFormView> {
  DisscountFormBloc bloc = DisscountFormBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DisscountFormBloc>())
      GetIt.I.unregister<DisscountFormBloc>();
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
      child: BlocListener<DisscountFormBloc, DisscountFormState>(
        listener: (context, state) {},
        child: BlocBuilder<DisscountFormBloc, DisscountFormState>(
          builder: (context, state) {
            final bloc = context.read<DisscountFormBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DisscountFormBloc bloc,
    DisscountFormState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisscountForm'),
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
            onPressed: () => bloc.add(DisscountFormIncrementEvent()),
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
