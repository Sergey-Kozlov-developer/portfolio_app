import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(state is ProductLoadedState) {
            return SingleChildScrollView();
          }
          if(state is ProductErrorState) {
            return const Center(
              child: Text('Error'),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
