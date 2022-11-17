import 'package:equatable/equatable.dart';
import 'package:portfolio_app/presentation/home_page/model/best_seller.dart';
import 'package:portfolio_app/presentation/home_page/model/home_store.dart';

class StoreEntity extends Equatable {
  final List<HomeStoreList> homeStore;
  final List<BestSellerList> bestSeller;

  const StoreEntity({
    required this.homeStore,
    required this.bestSeller,
  });

  @override
  List<Object?> get props => [homeStore, bestSeller];
}
