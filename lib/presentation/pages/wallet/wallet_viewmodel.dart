import 'package:flutter/material.dart';
import 'package:signals/signals.dart';

import '../../../core/di/injection.dart';
import '../../../data/dto/wallet_model.dart';
import '../../../domain/usecases/get_countries.dart';
import '../../../domain/usecases/get_wallets.dart';

class WalletListViewModel extends ChangeNotifier {
  final minPriceController = TextEditingController();
  final maxPriceController = TextEditingController();
  // State variables
  final walletsSignal = signal<List<WalletModel>>([]);
  final countriesSignal = signal<List<CountryModel>>([]);
  final selectedCountrySignal = signal<CountryModel?>(null);
  final isLoadingSignal = signal<bool>(true);
  final errorSignal = signal<String?>(null);
  final isFilterAppliedSignal = signal<bool>(false);

  // Dependencies
  final _getWallets = sl<GetWallets>();
  final _getCountries = sl<GetCountries>();

  WalletListViewModel() {
    _init();
  }

  void _init() {
    fetchWallets();
    fetchCountries();
  }


  Future<void> fetchWallets({
    String? name,
    double? minPrice,
    double? maxPrice,
    int? countryId,
  }) async {
    isLoadingSignal.value = true;
    errorSignal.value = null;

    final result = await _getWallets(GetWalletsParams(
      name: name,
      minPrice: minPrice,
      maxPrice: maxPrice,
      countryId: countryId,
    ));

    result.fold(
          (failure) {
        errorSignal.value = failure.message;
        isLoadingSignal.value = false;
      },
          (data) {
        walletsSignal.value = data;
        isLoadingSignal.value = false;
      },
    );
  }

  Future<void> fetchCountries() async {
    final result = await _getCountries();

    result.fold(
          (failure) {
        errorSignal.value = failure.message;
      },
          (data) {
        countriesSignal.value = data;
      },
    );
  }

  void applyFilters() {
    final minPrice = minPriceController.text.isNotEmpty
        ? double.tryParse(minPriceController.text)
        : null;
    final maxPrice = maxPriceController.text.isNotEmpty
        ? double.tryParse(maxPriceController.text)
        : null;

    fetchWallets(
      minPrice: minPrice,
      maxPrice: maxPrice,
      countryId: selectedCountrySignal.value?.id,
    );

    isFilterAppliedSignal.value = true;
  }

  void resetFilters() {
    minPriceController.clear();
    maxPriceController.clear();
    selectedCountrySignal.value = null;
    fetchWallets();
    isFilterAppliedSignal.value = false;
  }

  void onCountryChanged(CountryModel? country) {
    selectedCountrySignal.value = country;
  }
}



























































// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:signals/signals_flutter.dart';
// import 'package:context_plus/context_plus.dart' as cp;
// import '../../../core/error/failure.dart';
// import '../../../data/dto/wallet_model.dart';
// import '../../../domain/usecases/get_wallets.dart';
// class WalletViewModel {
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