import 'package:flutter/material.dart';
import 'package:moteelz/domain/usecases/get_wallet_details.dart';
import 'package:signals/signals.dart';
import 'package:signals/signals_flutter.dart';

import '../../../core/di/injection.dart';
import '../../../data/dto/wallet_model.dart';
import '../../../domain/usecases/get_countries.dart';
import '../../../domain/usecases/get_wallets.dart';

class WalletDetailsViewModel extends ChangeNotifier {

  // State variables
  final walletId=signal<int?>(null);
  final walletSignal = signal<WalletDetailModel?>(null);
  final isLoadingSignal = signal<bool>(true);
  final errorSignal = signal<String?>(null);

  // Dependencies
  final _getWalletDetails = sl<GetWalletDetails>();


  WalletListViewModel() {
    _init();
  }

  void _init() {
    fetchWalletDetails();
  }

  Future<void> fetchWalletDetails({
    String? name,
    double? minPrice,
    double? maxPrice,
    int? countryId,
  }) async {
    isLoadingSignal.value = true;
    errorSignal.value = null;

    final result = await _getWalletDetails(walletId.value!);

    result.fold(
          (failure) {
        errorSignal.value = failure.message;
        isLoadingSignal.value = false;
      },
          (data) {
        walletSignal.value = data;
        isLoadingSignal.value = false;
      },
    );
  }

}