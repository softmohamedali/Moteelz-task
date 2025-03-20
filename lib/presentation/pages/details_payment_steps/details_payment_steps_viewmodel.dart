import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:signals/signals_flutter.dart';

import '../../../core/di/injection.dart';
import '../../../core/ui/app_colors.dart';
import '../../../data/dto/wallet_details_response/wallet_details_model/wallet_details_model.dart';
import '../../../data/dto/wallets_response/wallet_model/day_option/dey_option.dart';
import '../../../domain/usecases/get_wallet_details.dart';
import '../../../presentation/widgets/m_text.dart';
import '../../widgets/success_payment_dialog.dart';

class DetailsPaymentStepsViewmodel extends ChangeNotifier {
  // State variables
  final step = signal(1);
  final walletSignal = signal<WalletDetailModel?>(null);
  final selectedNightSignal = signal<DayOption?>(null);
  final walletId = signal<int?>(null);
  final isLoadingSignal = signal<bool>(true);
  final successSignal = signal<bool>(false);
  final errorSignal = signal<String?>(null);

  // Payment info
  final cardHolderName = TextEditingController();
  final cardNumber = TextEditingController();
  final cardExpire = TextEditingController();
  final cardCvc = TextEditingController();
  final couponCode = TextEditingController();

  // Coupon state
  final hasCoupon = signal<bool>(false);
  final couponDiscount = signal<double>(0.0);
  final isValidatingCoupon = signal<bool>(false);

  // Payment validation
  final formKey = GlobalKey<FormState>();
  final isSubmitting = signal<bool>(false);

  // Dependencies
  final _getWalletDetails = sl<GetWalletDetails>();

  // Signal effect disposer
  late final Disposer _walletIdDisposer;

  DetailsPaymentStepsViewmodel() {
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

  void goNext() {
    if (step.value == 1) {
      step.value++;
    }
  }

  void goBack() {
    if (step.value == 2) {
      step.value--;
    } else {
      Get.back();
    }
  }

  Future<void> fetchWalletDetails({
    String? name,
    double? minPrice,
    double? maxPrice,
    int? countryId,
  }) async {
    isLoadingSignal.value = true;
    errorSignal.value = null;

    if(walletId.value!=null){
      final result = await _getWalletDetails(walletId.value!);

      result.fold(
            (failure) {
          errorSignal.value = failure.message;
          isLoadingSignal.value = false;
        },
            (data) {
          walletSignal.value = data;
          selectedNightSignal.value = walletSignal.value!.numbersOfDays[0];
          isLoadingSignal.value = false;
        },
      );
    }
  }

  Future<void> applyCouponCode() async {
    isValidatingCoupon.value = true;
    if (couponCode.text == "1111") {
      hasCoupon.value = true;
      // Apply 10% discount
      couponDiscount.value = 0.1;
      _showCouponSuccessMessage(true);
    } else {
      _showCouponSuccessMessage(false);
      hasCoupon.value = false;
      couponCode.text="";
      couponDiscount.value = 0.0;
    }

    isValidatingCoupon.value = false;
    notifyListeners();
  }

  double getTotalPrice() {
    if (walletSignal.value == null || selectedNightSignal.value == null) {
      return 0.0;
    }

    // double originalPrice = selectedNightSignal.value!.;
    double originalPrice = 0;
    if (hasCoupon.value) {
      return originalPrice - (originalPrice * couponDiscount.value);
    }
    return originalPrice;
  }

  void _showCouponSuccessMessage(bool success) {
    final discountPercentage = (couponDiscount.value * 100).toInt();
    Get.snackbar(
      success?"تم تطبيق الخصم":"الكود غير موجود",
      success?"تم تطبيق خصم بنسبة $discountPercentage%":"حاول تطبيق كود اخر",
      backgroundColor:success ?Colors.green[100]:Colors.red[500],
      colorText:success? Colors.green[800]:Colors.white,
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 3),
    );
  }


  bool validateCard() {
    if(
    cardNumber.text.isEmpty||
    cardCvc.text.isEmpty||
    cardExpire.text.isEmpty||
    cardHolderName.text.isEmpty
    ){
      return true;
    }
    return false;
  }

  Future<void> processPayment() async {
    if (validateCard()) {
      Get.snackbar(
        "تنبيه",
        "جميع حقول الفيزا مطلوبه",
        backgroundColor:Colors.orange[500],
        colorText:Colors.white,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
      );
      return;
    }
    isSubmitting.value = true;
    Future.delayed(Duration(milliseconds: 1000));
    successSignal.value = true;


    isSubmitting.value = false;
    successSignal.value = false;
  }

  @override
  void dispose() {
    step.value = 1;
    walletSignal.value = null;
    selectedNightSignal.value = null;
    walletId.value = null;
    isLoadingSignal.value = false;
    successSignal.value = false;
    errorSignal.value = null;
    cardHolderName.clear();
    cardNumber.clear();
    cardExpire.clear();
    cardCvc.clear();
    couponCode.clear();
    hasCoupon.value = false;
    couponDiscount.value = 0.0;
    isValidatingCoupon.value = false;
    isSubmitting.value = false;
    super.dispose();
  }
}