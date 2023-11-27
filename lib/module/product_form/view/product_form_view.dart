import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../core.dart';

class ProductFormView extends StatefulWidget {
  const ProductFormView({Key? key}) : super(key: key);

  @override
  State<ProductFormView> createState() => _ProductFormViewState();
}

class _ProductFormViewState extends State<ProductFormView> {
  ProductFormBloc bloc = ProductFormBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductFormBloc>())
      GetIt.I.unregister<ProductFormBloc>();
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
      child: BlocListener<ProductFormBloc, ProductFormState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductFormBloc, ProductFormState>(
          builder: (context, state) {
            final bloc = context.read<ProductFormBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductFormBloc bloc,
    ProductFormState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductForm'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              QImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  state.photo = value;
                },
              ),
              QTextField(
                label: "Product Name",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  state.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  state.price = double.tryParse(value) ?? 0;
                },
              ),
              QDropdownField(
                label: "Category",
                validator: Validator.required,
                value: state.category,
                items: [
                  {
                    "label": "Food",
                    "value": "Food",
                  },
                  {
                    "label": "Drink",
                    "value": "Drink",
                  }
                ],
                onChanged: (value, label) {
                  state.category = value;
                },
              ),
              QMemoField(
                label: "Description",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  state.description = value;
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 72,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () => bloc.add(ProductFormSaveButtonEvent()),
            child: const Text("save"),
          ),
        ),
      ),
    );
  }
}
