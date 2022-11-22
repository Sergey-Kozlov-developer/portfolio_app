import 'dart:convert';

import 'package:portfolio_app/core/error/exception.dart';
import 'package:portfolio_app/core/utils/constans.dart';
import 'package:portfolio_app/data/models/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductRemoteDataSource {

  Future<List<ProductModel>> getProduct();

}
class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {

  final http.Client client;

  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ProductModel>> getProduct() => _getProductFromUrl(productUrl);

  Future<List<ProductModel>> _getProductFromUrl(String productUrl) async {
    final response = await client.get(Uri.parse(productUrl));
    if (response.statusCode == 200) {
      final jsonProduct = json.decode(response.body) as Map<String, dynamic>;
      List<ProductModel> list = [];
      ProductModel resposse = ProductModel.fromJson(jsonProduct);
      list.add(resposse);
      return list;
    }  else {
      throw ServerException();
    }
  }

}