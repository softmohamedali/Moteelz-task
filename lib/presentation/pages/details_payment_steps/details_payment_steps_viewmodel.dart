import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:signals/signals_flutter.dart';

class DetailsPaymentStepsViewmodel {

  final step = signal(1);

  void goNext(){
    if(step.value==1){
      step.value++;
      print("------------${step.value}");
    }
  }

  void goBack(){
    if(step.value==2){
      step.value--;
      print("------------${step.value}");
    }else{
      Get.back();
    }
  }

}