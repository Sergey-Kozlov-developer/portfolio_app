import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getAllProducts();
}