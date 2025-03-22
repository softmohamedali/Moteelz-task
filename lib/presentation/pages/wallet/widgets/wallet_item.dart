import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:moteelz/core/ui/app_dimen.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../../core/ui/responsive.dart';
import '../../../widgets/exhibition_card.dart';
import '../../../widgets/m_text.dart';
import '../wallet_page.dart';
import '../../../widgets/feuture_item.dart';

class WalletItem extends StatelessWidget {
  final String cardImgUrl;
  final String validThru;
  final String catigory;
  final String daysNumber;
  final String name;
  final double price;
  final List<String> features;
  final GestureTapCallback? onTap;

  const WalletItem({
    Key? key,
    required this.cardImgUrl,
    required this.validThru,
    required this.daysNumber,
    required this.name,
    required this.price,
    required this.features,
    this.onTap, required this.catigory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 2, // Adjust shadow depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Border radius
        ),
        child: Container(
          padding: EdgeInsets.all(AppDimens.p18),
          child: Column(
            children: [
              Container(
                height: Get.height * 0.25,
                child: ExhibitionCard(
                  img:cardImgUrl
                ),
              ),
              SizedBox(height: AppDimens.h16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.sec_pinc_txt.withAlpha(40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MText(
                      value: '$daysNumber ${"ليالي"}',
                      textDirection: TextDirection.rtl,
                      color: AppColors.sec_pinc_txt,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  MText(
                    value: '${catigory}#',
                    color: AppColors.primary,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ],
              ),
              SizedBox(height: AppDimens.h10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MText(
                    value: name,
                    fontSize: AppDimens.s18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.thr_violet_txt,
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
                  MText(
                    value: ' ر.س $price',
                    textDirection: TextDirection.rtl,
                    fontSize: AppDimens.s18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,

                  ),
                  MText(
                    value: 'السعر يبدأ من :',
                    fontSize: AppDimens.s16,
                    color: AppColors.primry_gray_txt,
                        fontWeight: FontWeight.w500,
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
