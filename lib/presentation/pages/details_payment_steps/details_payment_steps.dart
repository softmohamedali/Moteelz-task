import 'package:context_plus/context_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/payment/payment_page.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/widgets/stepper.dart';
import 'package:signals_flutter/signals_flutter.dart';

import '../../widgets/success_payment_dialog.dart';
import 'details/details_page.dart';
import 'details_payment_steps_viewmodel.dart';

final detailsPaymentStepsViewModel = DetailsPaymentStepsViewmodel();
final detailsPaymentViewmodelRef = Ref<DetailsPaymentStepsViewmodel>();

class DetailsPaymentStepsScreen extends HookWidget {
  final int walletId;

  const DetailsPaymentStepsScreen({super.key, required this.walletId});

  @override
  Widget build(BuildContext context) {
    final viewModel =
        detailsPaymentViewmodelRef.bind(context, () => detailsPaymentStepsViewModel);
    viewModel.walletId.value=walletId;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading:false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_forward, color: Colors.black),
                onPressed: () {
                  viewModel.goBack();

                },
              ),
            ],
          ),
        ),
        body: Watch((context){
          if(viewModel.successSignal.value){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const PaymentSuccessDialog();
              },
            );
          }

          return SafeArea(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: AppDimens.p18),
                    child: Watch((context) {
                      return CustomStepper(
                        currentStep: viewModel.step.value,
                        steps: ['البطاقة', 'ادفع الآن'],
                      );
                    })),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child:
                    Container(
                      child: viewModel.step.value == 1
                          ? DetailsScreen()
                          : PaymentScreen(),)

                )
              ],
            ),
          );
        })
    );

  }
}
