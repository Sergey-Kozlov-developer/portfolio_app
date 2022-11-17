import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/core/usecases/usecases.dart';
import 'package:portfolio_app/domain/entities/store_entity.dart';
import 'package:portfolio_app/domain/repositories/home_repository.dart';

class GetAllStoreUseCases extends UseCase<List<StoreEntity>, void> {
  final HomeRepository homeRepository;

  GetAllStoreUseCases(this.homeRepository);

  @override
  Future<Either<Failure, List<StoreEntity>>> call({void params}) async {
    return homeRepository.getStore()!;
  }
}