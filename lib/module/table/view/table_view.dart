import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../shared/theme/theme_config.dart';
import '../bloc/table_bloc.dart';
import '../event/table_event.dart';
import '../state/table_state.dart';

class TableView extends StatefulWidget {
  const TableView({Key? key}) : super(key: key);

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  TableBloc bloc = TableBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<TableBloc>()) GetIt.I.unregister<TableBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    super.initState();
    bloc.add(TableGetDataEvent());
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
      child: BlocListener<TableBloc, TableState>(
        listener: (context, state) {},
        child: BlocBuilder<TableBloc, TableState>(
          builder: (context, state) {
            final bloc = context.read<TableBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    TableBloc bloc,
    TableState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
              child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: state.tabletList.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = state.tabletList[index];
                  var used = item.status == "used";
                  var color = primaryColor;
                  if (used) {
                    color = Colors.red;
                  }
                  return Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ("${item.tableNumber}"),
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          )),
        ),
      ),
    );
  }
}
