import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/home_page/widget/category_icon_widget.dart';
import 'package:portfolio_app/resources/app_colors.dart';
import 'package:portfolio_app/resources/app_icons.dart';

class ScrollCategoryWidget extends StatelessWidget {
  const ScrollCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CategoryIconWidget(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset(AppIcons.phones),
            ),
            color: AppColors.redColor,
            text: const Text(
              'Phones',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.redColor,
              ),
            ),
          ),
          CategoryIconWidget(
            iconButton: IconButton(
              onPressed: () {},
              focusColor: AppColors.redColor,
              icon: Image.asset(AppIcons.computer),
            ),
            color: AppColors.whiteColor,
            text: const Text(
              'Computer',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.bottomNavBarItem,
              ),
            ),
          ),
          CategoryIconWidget(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset(AppIcons.health),
            ),
            color: AppColors.whiteColor,
            text: const Text(
              'Health',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.bottomNavBarItem,
              ),
            ),
          ),
          CategoryIconWidget(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset(AppIcons.books),
            ),
            color: AppColors.whiteColor,
            text: const Text(
              'Books',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.bottomNavBarItem,
              ),
            ),
          ),
          CategoryIconWidget(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset(AppIcons.books),
            ),
            color: AppColors.whiteColor,
            text: const Text(
              'Books',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.bottomNavBarItem,
              ),
            ),
          ),
        ],
      ),
      //
    );
  }
}
