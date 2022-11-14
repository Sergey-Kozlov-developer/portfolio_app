import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/home_page/model/home_store.dart';
import 'package:portfolio_app/resources/app_colors.dart';

class HotSalesCarouselWidget extends StatefulWidget {
  const HotSalesCarouselWidget({Key? key}) : super(key: key);

  @override
  State<HotSalesCarouselWidget> createState() => _HotSalesCarouselWidgetState();
}

class _HotSalesCarouselWidgetState extends State<HotSalesCarouselWidget> {
  late Future<HomeStoreList> homeStoreList;

  @override
  void initState() {
    super.initState();
    homeStoreList = getHomeStoreList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<HomeStoreList>(
      future: homeStoreList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: 130,
            width: 390,
            child: ListView.builder(
              itemCount: snapshot.data!.homeStore.length,
              itemBuilder: (context, index) {
                return Image.network(snapshot.data!.homeStore[index].picture);
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error');
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
