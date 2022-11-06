import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          BodyContentWidget(),
          ScrollCategoryWidget(),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
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
        ),
        const SizedBox(height: 24),
        // ScrollCategoryWidget(),
      ],
    );
  }
}

class ScrollCategoryWidget extends StatelessWidget {
  const ScrollCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              color: AppColors.redColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(AppIcons.phones),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppIcons.computer),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppIcons.health),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppIcons.books),
          ),
        ],
      ),
    );
  }
}
