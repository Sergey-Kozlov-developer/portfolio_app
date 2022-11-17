import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/domain/entities/bestseller_entity.dart';
import 'package:portfolio_app/domain/entities/home_store_entity.dart';
import 'package:portfolio_app/domain/entities/store_entity.dart';

abstract class HomeRepository {
  // Either для перехвата ошибок
  // получаем весь список для передачи entity в уровень представления через usecases
  Future<Either<Failure, List<StoreEntity>>> getStore();

  // получаем список home_store для передачи entity в уровень представления через usecases
  Future<Either<Failure, List<HomeStoreEntity>>> getHomeStore();

  // получаем список bestseller для передачи entity в уровень представления через usecases
  Future<Either<Failure, List<BestSellerEntity>>> getBestseller();
}
