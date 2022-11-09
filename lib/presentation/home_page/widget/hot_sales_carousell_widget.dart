import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/resources/app_colors.dart';

class HotSalesCarouselWidget extends StatelessWidget {
  const HotSalesCarouselWidget({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }

}
