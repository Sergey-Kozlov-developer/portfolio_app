import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarWidget(),
        backgroundColor: const Color(0xFFF8F8F8),
        elevation: 0,
        centerTitle: false,
      ),
      body: BodyContentWidget(),
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
          color: Color(0xFFFF6E4E),
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
          color: Color(0xFFFF6E4E),
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
                  color: Color(0xFFFF6E4E),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.abc_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.abc_outlined)),
            ],
          ),


        ),
      ],
    );
  }
}
