import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/exception.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/data/datasources/product_remote_data_source.dart';
import 'package:portfolio_app/domain/entities/product_entity.dart';
import 'package:portfolio_app/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource});


  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts() async {
    try {
      final remoteProduct = await productRemoteDataSource.getProduct();
      return Right(remoteProduct);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

}