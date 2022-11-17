import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/domain/entities/home_store_entity.dart';

part 'homestore_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HomeStoreModel extends HomeStoreEntity {
  const HomeStoreModel({
    required int? id,
    required bool? isNew,
    required String? title,
    required String? subtitle,
    required String? picture,
    required bool? isBuy,
  }) : super(
          id: id,
          isNew: isNew,
          title: title,
          subtitle: subtitle,
          picture: picture,
          isBuy: isBuy,
        );

  factory HomeStoreModel.fromJson(final Map<String, dynamic> json) =>
      _$HomeStoreModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeStoreModelToJson(this);
}
