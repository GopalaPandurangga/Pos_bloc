import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_terpadu_bloc/core.dart';
import 'package:get_it/get_it.dart';

class PosTableView extends StatefulWidget {
  const PosTableView({Key? key}) : super(key: key);

  @override
  State<PosTableView> createState() => _PosTableViewState();
}

class _PosTableViewState extends State<PosTableView> {
  PosTableBloc bloc = PosTableBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosTableBloc>()) {
      GetIt.I.unregister<PosTableBloc>();
    }
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
    bloc.add(PosTableGetDataEvent());
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
      child: BlocListener<PosTableBloc, PosTableState>(
        listener: (context, state) {},
        child: BlocBuilder<PosTableBloc, PosTableState>(
          builder: (context, state) {
            final bloc = context.read<PosTableBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosTableBloc bloc,
    PosTableState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PosTable'),
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
                  return InkWell(
                    onTap: () {
                      if (used) {
                        showInfoDialog("Not Available");
                        return;
                      }

                      Get.to(PosDineInView(
                        tableNumber: item.tableNumber,
                      ));
                    },
                    child: Container(
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
