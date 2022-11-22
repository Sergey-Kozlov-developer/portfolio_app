import 'package:get_it/get_it.dart';
import 'package:portfolio_app/data/datasources/home_remote_data_source.dart';
import 'package:portfolio_app/data/datasources/product_remote_data_source.dart';
import 'package:portfolio_app/data/repositories/home_repository_impl.dart';
import 'package:portfolio_app/data/repositories/product_repository_impl.dart';
import 'package:portfolio_app/domain/repositories/home_repository.dart';
import 'package:portfolio_app/domain/repositories/product_repository.dart';
import 'package:portfolio_app/domain/usecases/get_all_product.dart';
import 'package:portfolio_app/domain/usecases/get_all_store.dart';
import 'package:portfolio_app/presentation/home_page/bloc/home_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_app/presentation/product_detail/bloc/product_bloc.dart';

GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerFactory(() => HomeBloc(getAllStoreUseCase: sl()));
  // injection.registerFactory(() => CartBloc(getAllCartUseCase: injection()));
  sl.registerFactory(() => ProductBloc(getAllProductUseCase: sl()));

  sl.registerLazySingleton(() => GetAllStoreUseCases(sl()));
  // injection.registerLazySingleton(() => GetAllCartsUseCase(injection()));
  sl.registerLazySingleton(() => GetAllProductUseCase(sl()));

  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(homeRemoteDataSource: sl()));
  // injection.registerLazySingleton<CartRepository>(() => CartRepositoryImpl(cartRemoteDataSource: injection()));
  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(productRemoteDataSource: sl()));

  sl.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImpl(client: http.Client()));
  // injection.registerLazySingleton<CartRemoteDataSource>(() => CartRemoteDataSourceImpl(client: http.Client()));
  sl.registerLazySingleton<ProductRemoteDataSource>(() => ProductRemoteDataSourceImpl(client: http.Client()));

  sl.registerLazySingleton(() => http.Client());

}