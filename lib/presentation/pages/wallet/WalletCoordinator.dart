// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:signals/signals_flutter.dart';
// import 'package:context_plus/context_plus.dart' as cp;
// import '../../../core/error/failure.dart';
// import '../../../data/dto/wallet_response.freezed.dart';
// import '../../../domain/usecases/get_wallets.dart';
// class WalletCoordinator {
//   final GetWallets _getWallets;
//
//   late final Signal<List<Wallet>> wallets = signal([]);
//   late final Signal<bool> isLoading = signal(false);
//   late final Signal<String?> errorMessage = signal(null);
//
//   WalletCoordinator(this._getWallets);
//
//   void init() {
//     _fetchWallets();
//   }
//
//   Future<void> _fetchWallets() async {
//     isLoading.value = true;
//     errorMessage.value = null;
//
//     final result = await _getWallets();
//     result.fold(
//           (failure) => errorMessage.value = (failure as ServerFailure).message,
//           (walletsList) => wallets.value = walletsList.map((e) => Wallet.fromJson(e.toJson())).toList(),
//     );
//
//     isLoading.value = false;
//   }
//
//   void refresh() {
//     _fetchWallets();
//   }
// }
//
// // Custom hook using context_plus
// WalletCoordinator useWalletCoordinator() {
//   return useMemoized(
//         () {
//       final context = cp.Context.of(useContext() as cp.BuildContextWithDependencies);
//       final getWallets = context.read<GetWallets>();
//       final coordinator = WalletCoordinator(getWallets);
//       coordinator.init();
//       return coordinator;
//     },
//     [],
//   );
// }