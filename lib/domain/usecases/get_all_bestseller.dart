import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/core/usecases/usecases.dart';
import 'package:portfolio_app/domain/entities/bestseller_entity.dart';
import 'package:portfolio_app/domain/repositories/home_repository.dart';

class GetAllBestsellerUseCases extends UseCase<List<BestSellerEntity>, void> {
  final HomeRepository bestSellerRepository;

  GetAllBestsellerUseCases(this.bestSellerRepository);

  @override
  Future<Either<Failure, List<BestSellerEntity>>> call({void params}) async {
    return await bestSellerRepository.getBestseller();
  }


}