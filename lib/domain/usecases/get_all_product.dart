import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/core/usecases/usecases.dart';
import 'package:portfolio_app/domain/entities/product_entity.dart';
import 'package:portfolio_app/domain/repositories/product_repository.dart';

abstract class GetAllProductUseCaces extends UseCase<List<ProductEntity>, void> {
  final ProductRepository productRepository;

  GetAllProductUseCaces(this.productRepository);

  @override
  Future<Either<Failure, List<ProductEntity>>> call({void params}) async {
    return await productRepository.getAllProducts();
  }

}