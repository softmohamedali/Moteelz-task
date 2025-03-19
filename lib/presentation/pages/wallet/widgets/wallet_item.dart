import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_dimen.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../widgets/exhibition_card.dart';
import '../wallet_page.dart';
import '../../../widgets/feuture_item.dart';

class WalletItem extends StatelessWidget {
  final String cardNumber;
  final String validThru;
  final String daysNumber;
  final String holderName;
  final String cardType;
  final double price;
  final List<String> features;

  const WalletItem({
    Key? key,
    required this.cardNumber,
    required this.validThru,
    required this.daysNumber,
    required this.holderName,
    required this.cardType,
    required this.price,
    required this.features,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4, // Adjust shadow depth
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Border radius
      ),
      child: Container(
        padding: EdgeInsets.all(AppDimens.p18),
        child: Column(
          children: [
            ExhibitionCard(
              cardNumber: cardNumber,
              validThru: validThru,
              daysNumber: daysNumber,
              holderName: holderName,
              cardType: cardType,
            ),
            SizedBox(height: AppDimens.h16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.sec_pinc_txt.withAlpha(50),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '$daysNumber ${"ليالي"}',
                    textDirection: TextDirection.rtl,
                    style:  TextStyle(
                      color: AppColors.sec_pinc_txt,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'الأعمال#',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppDimens.h10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  cardType,
                  style:  TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.thr_violet_txt
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            SizedBox(height: AppDimens.h10),
            // Features
            ...features.map((feature) {
              return Column(
                children: [
                  FeatureItem(text: feature),
                  const SizedBox(height: 16),
                ],
              );
            }).toList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ' ر.س $price',
                  textDirection:TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                 Text(
                  'السعر يبدأ من :',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primry_gray_txt,
                    fontWeight: FontWeight.w600
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}