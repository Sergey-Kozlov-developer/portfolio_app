import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';

class ProductSliderWidget extends StatefulWidget {
  const ProductSliderWidget({Key? key}) : super(key: key);

  @override
  State<ProductSliderWidget> createState() => _ProductSliderWidgetState();
}

class _ProductSliderWidgetState extends State<ProductSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if(state is ProductLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ProductLoadedState) {
          return CarouselSlider.builder(
            itemCount: state.loadedProduct[0].images!.length,
            itemBuilder: (context, index, _) => ProductSliderModel(
              image: state.loadedProduct[0].images![index],
            ),
            options: CarouselOptions(
              height: 330,
              aspectRatio: 5.0,
              initialPage: 0,
              viewportFraction: 0.74,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal
            ),
          );
        }
        if (state is ProductErrorState) {
          return const Center(child: Text('Error'),);
        }
        return const CircularProgressIndicator();
      },
    );
  }
}


class ProductSliderModel extends StatelessWidget {
  final String? image;

  const ProductSliderModel({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image ?? ''),
          fit: BoxFit.fitWidth,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
