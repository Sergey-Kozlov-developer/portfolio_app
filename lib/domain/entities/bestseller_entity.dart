import 'package:equatable/equatable.dart';

class BestSellerEntity extends Equatable {
  final int id;
  final bool isFavorites;
  final int priceWithoutDiscount;
  final int discountPrice;
  final String picture;
  final String title;

  const BestSellerEntity({
    required this.id,
    required this.isFavorites,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.picture,
    required this.title,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        isFavorites,
        priceWithoutDiscount,
        discountPrice,
        picture,
        title,
      ];
}
