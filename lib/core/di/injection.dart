// import 'package:context_plus/context_plus.dart';
// import 'package:dio/dio.dart';
// import '../../data/api/wallet_api.dart';
// import '../../data/repositories/wallet_repository_impl.dart';
// import '../../domain/repositories/wallet_repository.dart';
// import '../../domain/usecases/get_wallets.dart';
//
// void setupDependencies() {
//   final dio = Dio();
//   context.registerSingleton<WalletApi>(WalletApi(dio));
//   context.registerSingleton<WalletRepository>(WalletRepositoryImpl(context.read<WalletApi>()));
//   context.registerSingleton<GetWallets>(GetWallets(context.read<WalletRepository>()));
// }