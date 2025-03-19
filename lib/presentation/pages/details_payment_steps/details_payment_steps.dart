import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/widgets/stepper.dart';
import 'package:moteelz/presentation/pages/payment/payment_page.dart';

import '../details/details_page.dart';


class DetailsPaymentStepsScreen extends StatefulWidget {
  const DetailsPaymentStepsScreen({super.key});

  @override
  State<DetailsPaymentStepsScreen> createState() => _DetailsPaymentStepsScreenState();
}

class _DetailsPaymentStepsScreenState extends State<DetailsPaymentStepsScreen> {

  int step=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body:  SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: AppDimens.p18),
              child: CustomStepper(
                currentStep: step,
                steps: ['البطاقة', 'ادفع الآن'],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
                child: Container(
                  child: step==1?
                  DetailsScreen():PaymentScreen(),
                )
            )
          ],
        ),
      ),
    );
  }
}

