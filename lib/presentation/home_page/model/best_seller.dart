// import 'dart:convert';
//
// import 'package:json_annotation/json_annotation.dart';
// import 'package:http/http.dart' as http;
//
// part 'best_seller.g.dart';
//
//
// @JsonSerializable(fieldRename: FieldRename.snake)
// class BestSellerList {
//
//   List<BestSeller> bestSeller;
//
//   BestSellerList({required this.bestSeller});
//
//   factory BestSellerList.fromJson(final Map<String, dynamic> json) => _$BestSellerListFromJson(json);
//
//
//   Map<String, dynamic> toJson() => _$BestSellerListToJson(this);
//
// }
//
//
// @JsonSerializable(fieldRename: FieldRename.snake)
// class BestSeller {
//   final int id;
//   final bool isFavorites;
//   final int priceWithoutDiscount;
//   final int discountPrice;
//   final String picture;
//   final String title;
//
//   BestSeller({
//     required this.id,
//     required this.isFavorites,
//     required this.priceWithoutDiscount,
//     required this.discountPrice,
//     required this.picture,
//     required this.title,
//   });
//
//   factory BestSeller.fromJson(final Map<String, dynamic> json) =>
//       _$BestSellerFromJson(json);
//
//   Map<String, dynamic> toJson() => _$BestSellerToJson(this);
// }
// Future<BestSellerList> getBestSellerList() async {
//   const url = 'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175';
//   final response = await http.get(Uri.parse(url));
//   if (response.statusCode == 200) {
//     return BestSellerList.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Error: ${response.reasonPhrase}');
//   }
//
//
// }