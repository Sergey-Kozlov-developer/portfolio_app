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
            height: 100,
            child: ListView.builder(
              itemCount: snapshot.data!.homeStore.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(snapshot.data!.homeStore[index].title),
                    subtitle: Text(snapshot.data!.homeStore[index].subtitle),
                    leading: Image.network(
                      snapshot.data!.homeStore[index].picture,
                      width: 100,
                      height: 100,
                    ),
                    isThreeLine: true,
                  ),
                );
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
