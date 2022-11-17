import 'package:dartz/dartz.dart';
import 'package:portfolio_app/core/error/exception.dart';
import 'package:portfolio_app/core/error/failure.dart';
import 'package:portfolio_app/data/datasources/home_remote_data_source.dart';
import 'package:portfolio_app/domain/entities/bestseller_entity.dart';
import 'package:portfolio_app/domain/entities/home_store_entity.dart';
import 'package:portfolio_app/domain/entities/store_entity.dart';
import 'package:portfolio_app/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<BestSellerEntity>>> getBestseller() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<HomeStoreEntity>>> getHomeStore() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<StoreEntity>>> getStore() async {
    try {
      final remoteHome = await homeRemoteDataSource.getStore();
      return Right(remoteHome);
    } on ServerException {
      return Left(ServerFailure());
    }
  }


}