import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/widgets/stepper.dart';
import '../../widgets/exhibition_card.dart';
import '../../widgets/m_text.dart';


class DetailsPaymentStepsScreen extends StatelessWidget {
  const DetailsPaymentStepsScreen({super.key});

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
              padding: EdgeInsets.only(top: 32),
              child: CustomStepper(
                currentStep: 2, // 0 for first step
                steps: ['البطاقة', 'ادفع الآن'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

