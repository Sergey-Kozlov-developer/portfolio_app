import 'package:equatable/equatable.dart';
import 'package:portfolio_app/data/models/bestseller_model.dart';
import 'package:portfolio_app/data/models/homestore_model.dart';

class StoreEntity extends Equatable {
  final List<HomeStoreModel>? homeStore;
  final List<BestSellerModel>? bestSeller;

  const StoreEntity({
    required this.homeStore,
    required this.bestSeller,
  });

  @override
  List<Object?> get props => [homeStore, bestSeller];
}
