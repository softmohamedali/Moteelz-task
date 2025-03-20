import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:moteelz/domain/usecases/get_wallet_details.dart';
import 'package:signals/signals.dart';
import 'package:signals/signals_flutter.dart';

import '../../../core/di/injection.dart';
import '../../../data/dto/wallet_details_response/wallet_details_model/wallet_details_model.dart';
import '../../../data/dto/wallets_response/wallet_model/day_option/dey_option.dart';

class PaymentViewModel extends ChangeNotifier {

  // State variables
  final walletId=signal<int?>(null);
  final walletSignal = signal<WalletDetailModel?>(null);
  final selectedNightSignal = signal<DayOption?>(null);
  final isLoadingSignal = signal<bool>(true);
  final errorSignal = signal<String?>(null);

  // Dependencies
  final _getWalletDetails = sl<GetWalletDetails>();

  // Signal effect disposer
  late final Disposer _walletIdDisposer;

  PaymentViewModel() {
    _init();
    _walletIdDisposer = effect(() {
      final id = walletId.value;
      if (id != null) {
        _init();
      }
    });
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
    print("-----fetchWalletDetails------------${walletId.value}");
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
        selectedNightSignal.value=walletSignal.value!.numbersOfDays[0];
        isLoadingSignal.value = false;
      },
    );
  }


  @override
  void dispose() {
    _walletIdDisposer();
    super.dispose();
  }
}