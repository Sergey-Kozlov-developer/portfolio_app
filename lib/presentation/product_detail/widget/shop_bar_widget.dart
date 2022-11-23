import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';
import 'package:portfolio_app/resources/app_colors.dart';
import 'package:portfolio_app/resources/app_icons.dart';

class ShopBarWidget extends StatelessWidget {
  const ShopBarWidget({Key? key}) : super(key: key);
  final List<Widget> tabs = const [
    Tab(text: 'Shop'),
    Tab(text: 'Details'),
    Tab(text: 'Features'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductLoadedState) {
          return DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints.expand(height: 35),
                  child: TabBar(
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.bottomNavBarItem,
                    ),
                    labelColor: AppColors.bottomNavBarItem,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                        color: AppColors.redColor,
                        width: 3,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bottomNavBarItem,
                    ),
                    tabs: tabs,
                  ),
                ),
                //
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset(AppIcons.cpu),
                        const SizedBox(height: 5),
                        Text(state.loadedProduct[0].cpu!),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(AppIcons.camera),
                        const SizedBox(height: 5),
                        Text(state.loadedProduct[0].camera!),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(AppIcons.ram),
                        const SizedBox(height: 5),
                        Text(state.loadedProduct[0].ssd!),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(AppIcons.ssd),
                        const SizedBox(height: 5),
                        Text(state.loadedProduct[0].sd!),
                      ],
                    ),
                  ],
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
    );
  }
}
