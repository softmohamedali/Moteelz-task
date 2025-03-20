import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:moteelz/core/ui/app_assets.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/presentation/pages/wallet/wallet_page.dart';

import '../../core/ui/app_colors.dart';
import 'm_text.dart'; // Assuming you're using GetX for navigation

class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.p18),
      ),
      child: Container(
        height: Get.height*0.32,
        width: Get.width*0.55,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFE6DDFF),        // Starting color
              Color(0xFFFBFBFB),  // Ending color
            ],
            begin: Alignment.topCenter,    // Gradient start point
            end: Alignment.bottomCenter,  // Gradient end point
          ),
          border: Border.all(
            color: Colors.white,    // Border color
            width: 3.0,            // Border width
          ),
          borderRadius: BorderRadius.circular(20),  // Optional: for rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AppAssets.successDone,
              ),
              const SizedBox(height: 16),
              const MText(
                value: "تم الدفع",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const MText(
                value: "تم شراء الرصيد بنجاح",
                fontSize: AppDimens.s16,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: AppColors.primry_gray_txt,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: Get.width*0.38,
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                    Get.offAll(WalletScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const MText(
                    value: "الصفحة الرئيسية",
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}