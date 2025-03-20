import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:signals/signals_flutter.dart';

import '../../../data/dto/wallet_details_response/wallet_details_model/wallet_details_model.dart';
import '../../../data/dto/wallets_response/wallet_model/day_option/dey_option.dart';

class DetailsPaymentStepsViewmodel {

  final step = signal(1);
  final walletSignal = signal<WalletDetailModel?>(null);
  final selectedNightSignal = signal<DayOption?>(null);

  void goNext(){
    if(step.value==1){
      step.value++;
    }
  }

  void goBack(){
    if(step.value==2){
      step.value--;
    }else{
      Get.back();
    }
  }


  void setData({
    required WalletDetailModel wallet,
    required DayOption days
}){
    walletSignal.value=wallet;
    selectedNightSignal.value=days;
  }


}