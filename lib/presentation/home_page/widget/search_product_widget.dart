import 'package:flutter/material.dart';
import 'package:portfolio_app/resources/app_colors.dart';
import 'package:portfolio_app/resources/app_icons.dart';

class SearchProductWidget extends StatelessWidget {
  const SearchProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Padding(
          padding:
          const EdgeInsets.only(left: 23, right: 82, top: 35, bottom: 25),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search, color: AppColors.redColor),
              filled: true,
              fillColor: AppColors.whiteColor,
              hintStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColors.redColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColors.redColor),
              ),
              // icon: Icon(Icons.search, color: AppColors.redColor),
            ),
          ),
        ),
        Container(
          width: 34,
          height: 34,
          margin: const EdgeInsets.only(right: 37),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: AppColors.redColor,
          ),
          // color: AppColors.redColor,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppIcons.menu),
          ),
        ),
      ],
    );
  }
}
