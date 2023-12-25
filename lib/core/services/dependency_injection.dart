import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mnjz/features/home/data/data_sources/remote_data_source/home_products_remote_service.dart';
import 'package:mnjz/features/home/domain/use_cases/get_home_products_use_case.dart';

import '../../features/home/data/repositories/home_products_repository_impl.dart';
import '../../features/home/domain/repositories/base_home_repository.dart';
import '../../features/home/presentation/controllers/home_cubit.dart';
import '../networking/network_service.dart';

final sl = GetIt.instance;

class ServicesLocator {
  init() {
    /// Cubits
    sl.registerFactory(() => HomeCubit(sl()));

    /// Use cases
    sl.registerLazySingleton(() => GetHomeProductsUseCase(sl()));

    ///Repository
    sl.registerLazySingleton<BaseHomeRepository>(() => HomeRepository(sl()));

    ///DataSource
    sl.registerLazySingleton<HomeProductsRemoteService>(
        () => HomeProductsRemoteService(sl()));

    sl.registerFactory(() => RemoteService(Dio()));
  }
}
