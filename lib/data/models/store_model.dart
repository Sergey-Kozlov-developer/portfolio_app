import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/models/bestseller_model.dart';
import 'package:portfolio_app/data/models/homestore_model.dart';
import 'package:portfolio_app/domain/entities/store_entity.dart';

part 'store_model.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class StoreModel extends StoreEntity {

  const StoreModel({
    required List<HomeStoreModel> homeStore,
    required List<BestSellerModel> bestSeller,
}) : super(
    homeStore: homeStore,
    bestSeller: bestSeller,
  );

  factory StoreModel.fromJson(final Map<String, dynamic> json) => _$StoreModelFromJson(json);


  Map<String, dynamic> toJson() => _$StoreModelToJson(this);

}