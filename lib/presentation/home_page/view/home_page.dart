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
        children: [
          Expanded(
            child: ListView(
              children: const [
                SizedBox(height: 24),
                BodyContentWidget(),
                SizedBox(height: 24),
                ScrollCategoryWidget(),
                SearchProduct(),
                HotSalesWidget(),
                BestSellerWidget(),
                GreedBestSellerWidget(),
              ],
            ),
          ),
        ],
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

class HotSalesWidget extends StatelessWidget {
  const HotSalesWidget({Key? key}) : super(key: key);

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
        ),
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              alignment: Alignment.center,
              height: 220,
              width: 500,
              padding: const EdgeInsets.only(left: 21, right: 27),
              child: ListView(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                      'https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both'),
                  // const SizedBox(width: 10),
                  // Image.network(
                  //     'https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both'),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  margin: EdgeInsets.only(left: 44, top: 12),
                  // color: AppColors.redColor,
                  decoration: const BoxDecoration(
                    color: AppColors.redColor,
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                  ),
                  child: const Center(
                    child: Text(
                      'New',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.only(left: 44),
                  child: Text(
                    'IPhone 12',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 44, top: 5),
                  child: Text(
                    'Súper. Mega. Rápido.',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 44, top: 31),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(AppColors.whiteColor),
                    ),
                    child: const Text(
                      'Buy now!',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: AppColors.bottomNavBarItem,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class GreedBestSellerWidget extends StatelessWidget {
  const GreedBestSellerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      ),
    );
  }
}
