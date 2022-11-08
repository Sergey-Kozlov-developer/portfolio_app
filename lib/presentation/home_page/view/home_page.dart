import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/home_page/widget/category_icon_widget.dart';
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
        children: const [
          SizedBox(height: 24),
          BodyContentWidget(),
          SizedBox(height: 24),
          ScrollCategoryWidget(),
          SearchProduct(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottomNavBarItem,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.whiteColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.circle),
            label: 'Explorer',
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
            text: const Text('Health',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.bottomNavBarItem,
              ),),
          ),
          CategoryIconWidget(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset(AppIcons.books),
            ),
            color: AppColors.whiteColor,
            text: const Text('Books',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.bottomNavBarItem,
              ),),
          ),
          CategoryIconWidget(
            iconButton: IconButton(
              onPressed: () {},
              icon: Image.asset(AppIcons.books),
            ),
            color: AppColors.whiteColor,
            text: const Text('Books',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.bottomNavBarItem,
              ),),
          ),
        ],
      ),
      //
    );
  }
}

class SearchProduct extends StatelessWidget {
  const SearchProduct({Key? key}) : super(key: key);

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