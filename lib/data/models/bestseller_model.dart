import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/domain/entities/bestseller_entity.dart';

part 'bestseller_model.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class BestSellerModel extends BestSellerEntity {

  const BestSellerModel({
    required int id,
    required bool isFavorites,
    required int priceWithoutDiscount,
    required int discountPrice,
    required String picture,
    required String title,
}) : super(
    id: id,
    isFavorites: isFavorites,
    priceWithoutDiscount: priceWithoutDiscount,
    discountPrice: discountPrice,
    picture: picture,
    title: title,
  );

  factory BestSellerModel.fromJson(final Map<String, dynamic> json) => _$BestSellerModelFromJson(json);


  Map<String, dynamic> toJson() => _$BestSellerModelToJson(this);

}