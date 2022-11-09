import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/home_page/widget/greed_best_seller_widget.dart';
import 'package:portfolio_app/presentation/home_page/widget/hot_sales_carousell_widget.dart';
import 'package:portfolio_app/presentation/home_page/widget/scroll_category_widget.dart';
import 'package:portfolio_app/presentation/home_page/widget/search_product_widget.dart';
import 'package:portfolio_app/resources/app_colors.dart';
import 'package:portfolio_app/resources/app_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppBarWidget(),
        backgroundColor: const Color(0xFFF8F8F8),
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 24),
            BodyContentWidget(),
            SizedBox(height: 24),
            ScrollCategoryWidget(),
            SearchProductWidget(),
            HotSalesWidget(),
            HotSalesCarouselWidget(),
            BestSellerWidget(),
            GreedBestSellerWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottomNavBarItem,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.whiteColor,
        items: [
          BottomNavigationBarItem(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 20),
                Image.asset(AppIcons.circle),
                const SizedBox(width: 10),
                const Text(
                  'Explorer',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.shopping),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.hearth),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.profile),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.location_on_outlined,
          color: AppColors.redColor,
        ),
        SizedBox(width: 11),
        Text(
          'Zihuatenejo, Gro',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        SizedBox(width: 8),
        Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.redColor,
        ),
      ],
    );
  }
}

class BodyContentWidget extends StatelessWidget {
  const BodyContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Select Category',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Color(0XFF010035),
            ),
          ),
          Text(
            'View all',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.redColor,
            ),
          ),
        ],
      ),
    );
  }
}



class HotSalesWidget extends StatelessWidget {
  const HotSalesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hot sales',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: AppColors.bottomNavBarItem,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'see more',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.redColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 21, right: 21),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best seller',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: AppColors.bottomNavBarItem,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'see more',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppColors.redColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

