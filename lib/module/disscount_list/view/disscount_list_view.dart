import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/disscount_list_bloc.dart';
import '../event/disscount_list_event.dart';
import '../state/disscount_list_state.dart';

class DisscountListView extends StatefulWidget {
  const DisscountListView({Key? key}) : super(key: key);

  @override
  State<DisscountListView> createState() => _DisscountListViewState();
}

class _DisscountListViewState extends State<DisscountListView> {
  DisscountListBloc bloc = DisscountListBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DisscountListBloc>())
      GetIt.I.unregister<DisscountListBloc>();
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
      child: BlocListener<DisscountListBloc, DisscountListState>(
        listener: (context, state) {},
        child: BlocBuilder<DisscountListBloc, DisscountListState>(
          builder: (context, state) {
            final bloc = context.read<DisscountListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DisscountListBloc bloc,
    DisscountListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisscountList'),
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
            onPressed: () => bloc.add(DisscountListIncrementEvent()),
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
