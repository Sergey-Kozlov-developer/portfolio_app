import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/core/usecases/usecases.dart';
import 'package:portfolio_app/domain/entities/home_store_entity.dart';
import 'package:portfolio_app/domain/repositories/home_repository.dart';

class GetAllHomeStoreUseCases extends UseCase<List<HomeStoreEntity>, void> {
  final HomeRepository homeStoreRepository;

  GetAllHomeStoreUseCases(this.homeStoreRepository);
  // для передачя данных в UI
  @override
  Future<Either<Failure, List<HomeStoreEntity>>> call({void params}) async {
    return await homeStoreRepository.getHomeStore()!;
  }
}