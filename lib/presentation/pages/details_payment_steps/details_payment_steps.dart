import 'package:context_plus/context_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/widgets/stepper.dart';
import 'package:moteelz/presentation/pages/payment/payment_page.dart';
import 'package:signals_flutter/signals_flutter.dart';

import '../details/details_page.dart';
import 'details_payment_steps_viewmodel.dart';

final detailsPaymentStepsViewModel = DetailsPaymentStepsViewmodel();
final stepsViewmodelRef = Ref<DetailsPaymentStepsViewmodel>();

class DetailsPaymentStepsScreen extends HookWidget {
  final int walletId;

  const DetailsPaymentStepsScreen({super.key, required this.walletId});

  @override
  Widget build(BuildContext context) {
    final controller =
        stepsViewmodelRef.bind(context, () => detailsPaymentStepsViewModel);
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
                controller.goBack();
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: AppDimens.p18),
                child: Watch((context) {
                  return CustomStepper(
                    currentStep: controller.step.value,
                    steps: ['البطاقة', 'ادفع الآن'],
                  );
                })),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: Watch((context) {
              return Container(
                child: controller.step.value == 1
                    ? DetailsScreen(
                        walletId: walletId,
                      )
                    : PaymentScreen(),
              );
            }))
          ],
        ),
      ),
    );
  }
}
