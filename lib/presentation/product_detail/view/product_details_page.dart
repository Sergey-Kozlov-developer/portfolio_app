import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/widget/product_slider.dart';
import 'package:portfolio_app/resources/app_colors.dart';
import 'package:portfolio_app/resources/app_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.bottomNavBarItem,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size(15, 15),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            size: 19,
                            color: Colors.white,
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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.redColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size(37, 37),
                          ),
                          child: Image.asset(
                            AppIcons.shop,
                            color: Colors.white,
                            // size: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const ProductSliderWidget(),
                  const SizedBox(height: 5),
                  Container(
                    height: 400,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 37, left: 37, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                state.loadedProduct[0].title!,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.bottomNavBarItem,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.bottomNavBarItem,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  minimumSize: const Size(7, 7),
                                ),
                                child: state.loadedProduct[0].isFavorites ==
                                        true
                                    ? const Icon(Icons.favorite_border_outlined,
                                        color: AppColors.whiteColor)
                                    : const Icon(Icons.favorite,
                                        color: AppColors.whiteColor),
                              ),
                            ],
                          ),
                          RatingBar.builder(
                            initialRating: state.loadedProduct[0].rating!.toDouble(),
                            itemSize: 22,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            ignoreGestures: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                    ),
                  ),
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
