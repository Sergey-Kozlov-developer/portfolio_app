// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSellerList _$BestSellerListFromJson(Map<String, dynamic> json) =>
    BestSellerList(
      bestSeller: (json['best_seller'] as List<dynamic>)
          .map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BestSellerListToJson(BestSellerList instance) =>
    <String, dynamic>{
      'best_seller': instance.bestSeller,
    };

BestSeller _$BestSellerFromJson(Map<String, dynamic> json) => BestSeller(
      id: json['id'] as int,
      isFavorites: json['is_favorites'] as bool,
      priceWithoutDiscount: json['price_without_discount'] as int,
      discountPrice: json['discount_price'] as int,
      picture: json['picture'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$BestSellerToJson(BestSeller instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
      'picture': instance.picture,
      'title': instance.title,
    };
