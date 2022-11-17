import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/home_page/bloc/home_bloc.dart';
import 'package:portfolio_app/resources/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotSalesCarouselWidget extends StatefulWidget {
  const HotSalesCarouselWidget({Key? key}) : super(key: key);

  @override
  State<HotSalesCarouselWidget> createState() => _HotSalesCarouselWidgetState();
}

class _HotSalesCarouselWidgetState extends State<HotSalesCarouselWidget> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
            ),
          );
        }
        if (state is HomeLoadedState) {
          return CarouselSlider.builder(
            itemCount: state.loadedHomestore.length,
            options: CarouselOptions(
              height: 200,
              aspectRatio: 5.0,
              initialPage: 0,
              viewportFraction: 1,
            ),
            itemBuilder: (BuildContext context, int index, _) => SliderWidget(
              pictureUrl: state.loadedHomestore[index].picture,
              titlePhone: state.loadedHomestore[index].title,
              subtitleSuper: state.loadedHomestore[index].subtitle,
              isNew: state.loadedHomestore[index].isNew ?? false,
            ),
          );
        }
        if (state is HomeErrorState) {
          return const Text('Error');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}

class SliderWidget extends StatelessWidget {
  final String? pictureUrl;
  final String? titlePhone;
  final String? subtitleSuper;
  final bool? isNew;

  const SliderWidget({
    Key? key,
    required this.pictureUrl,
    required this.titlePhone,
    required this.subtitleSuper,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.network(
              pictureUrl ?? '',
              height: 485,
              width: double.maxFinite,
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Stack(
            children: [
              SizedBox(
                width: 500,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 67),
                  child: Text(
                    titlePhone ?? '',
                    maxLines: 3,
                    style: const TextStyle(
                      fontFamily: 'SFPro',
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 105,
                left: 28,
                child: Text(
                  subtitleSuper ?? '',
                  style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  left: 16,
                  child: isNew == true
                      ? ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'New',
                            style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.redColor,
                            minimumSize: const Size(15, 30),
                            shape: const CircleBorder(),
                          ),
                        )
                      : Container()),
              Positioned(
                top: 130,
                left: 28,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy now!',
                    style: TextStyle(
                      fontFamily: 'SFPro',
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.whiteColor,
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      minimumSize: const Size(15, 25)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
