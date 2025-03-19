import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../data/api/api_client.dart';
import '../../data/repositories/wallet_repository_impl.dart';
import '../../domain/repositories/wallet_repository.dart';
import '../../domain/usecases/get_countries.dart';
import '../../domain/usecases/get_wallet_details.dart';
import '../../domain/usecases/get_wallets.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  sl.registerLazySingleton(() {
    final dio = Dio();
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    return dio;
  });

  // Data Sources
  sl.registerLazySingleton(() => ApiClient(sl<Dio>()));

  // Repositories
  sl.registerLazySingleton<WalletRepository>(
          () => WalletRepositoryImpl(sl<ApiClient>()));

  // Use Cases
  sl.registerLazySingleton(() => GetWallets(sl<WalletRepository>()));
  sl.registerLazySingleton(() => GetWalletDetails(sl<WalletRepository>()));
  sl.registerLazySingleton(() => GetCountries(sl<WalletRepository>()));
}