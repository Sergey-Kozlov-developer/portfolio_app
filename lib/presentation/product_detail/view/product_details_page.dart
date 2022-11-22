import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/widget/product_slider.dart';
import 'package:portfolio_app/resources/app_colors.dart';
import 'package:portfolio_app/resources/app_icons.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ProductLoadedState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, bottom: 20, left: 30, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            size: 19,
                            color: Colors.white,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.bottomNavBarItem,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(10),
                            minimumSize: Size(15, 15),
                          ),
                        ),
                        const Text(
                          'Product details',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.bottomNavBarItem,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Image.asset(
                            AppIcons.shop,
                            color: Colors.white,
                            // size: 17,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.redColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(10),
                            minimumSize: Size(37, 37),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const ProductSliderWidget(),
                ],
              ),
            );
          }
          if (state is ProductErrorState) {
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
