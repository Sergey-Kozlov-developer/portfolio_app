import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/home_page/bloc/home_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/view/product_details_page.dart';
import 'package:portfolio_app/resources/app_colors.dart';

class GreedBestSellerWidget extends StatefulWidget {
  const GreedBestSellerWidget({Key? key}) : super(key: key);

  @override
  State<GreedBestSellerWidget> createState() => _GreedBestSellerWidgetState();
}

class _GreedBestSellerWidgetState extends State<GreedBestSellerWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 138) / 2;
    final double itemWidth = size.width / 2.1;
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state is HomeLoadingState) {
        return const Center(child: CircularProgressIndicator());
      }
      if (state is HomeLoadedState) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (itemWidth / itemHeight),
          ),
          primary: false,
          padding: const EdgeInsets.all(20),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: state.loadedBestseller.length,
          itemBuilder: (context, index) => GridWidget(
              pictureUrl: state.loadedBestseller[index].picture,
              titleItems: state.loadedBestseller[index].title,
              priceWithoutDiscount:
                  state.loadedBestseller[index].priceWithoutDiscount,
              discountPrice: state.loadedBestseller[index].discountPrice,
              isFavorites: state.loadedBestseller[index].isFavorites,
              id: state.loadedBestseller[index].id),
        );
      }
      if (state is HomeErrorState) {
        return Text('Error');
      }
      return CircularProgressIndicator();
    });
  }
}

class GridWidget extends StatelessWidget {
  final bool? isFavorites;
  final String? titleItems;
  final int? priceWithoutDiscount;
  final int? discountPrice;
  final String? pictureUrl;
  final int? id;

  const GridWidget({
    Key? key,
    required this.isFavorites,
    required this.titleItems,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.pictureUrl,
    required this.id,
  }) : super(key: key);

  final bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(7),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductDetailsPage()),
            );
          },
          child: Stack(alignment: Alignment.topCenter, children: [
            SizedBox(
                child: Image.network(
              pictureUrl ?? '',
              height: 190,
              width: double.maxFinite,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            )),
            Positioned(
              right: 10,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(5),
                      primary: Colors.white,
                      minimumSize: const Size(15, 15)),
                  child: isFavorites == true
                      ? const Icon(Icons.favorite, color: Colors.red, size: 15)
                      : const Icon(Icons.favorite_border,
                          color: Colors.red, size: 15)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$' + priceWithoutDiscount.toString(),
                          style: const TextStyle(
                            fontFamily: 'MarkProbold',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.bottomNavBarItem,
                          )),
                      const SizedBox(width: 20),
                      Text('\$' + discountPrice.toString(),
                          style: TextStyle(
                              fontFamily: 'MarkPronormal400',
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[400],
                              decoration: TextDecoration.lineThrough)),
                    ],
                  ),
                  Text(titleItems ?? '',
                      style: const TextStyle(
                        fontFamily: 'MarkPronormal400',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: AppColors.bottomNavBarItem,
                      )),
                ],
              ),
            ),
          ]),
        ));
  }
}
