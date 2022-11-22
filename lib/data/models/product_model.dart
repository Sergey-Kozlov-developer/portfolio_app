import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/domain/entities/product_entity.dart';

part 'product_model.g.dart';


@JsonSerializable()
class ProductModel extends ProductEntity {

  @JsonKey(name: 'CPU')
  final String? cpu;

  const ProductModel({
     this.cpu,
    required String? camera,
    required List<String>? capacity,
    required List<String>? color,
    required int? id,
    required List<String>? images,
    required bool? isFavorites,
    required int? price,
    required double? rating,
    required String? sd,
    required String? ssd,
    required String? title,
  }) :super(
    cpu: cpu,
    camera: camera,
    capacity: capacity,
    color: color,
    id: id,
    images: images,
    isFavorites: isFavorites,
    price: price,
    rating: rating,
    sd: sd,
    ssd: ssd,
    title: title,
  );


  factory ProductModel.fromJson(final Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);


  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

}