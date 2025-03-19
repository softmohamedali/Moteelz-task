import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/core/ui/app_font.dart';


import '../../widgets/bottom_continue_btn.dart';
import '../../widgets/exhibition_card.dart';
import '../../widgets/m_text.dart';
import '../details_payment_steps/widgets/stepper.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back_ground_gray,
      body:  Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: AppDimens.p18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MText(
                              value: 'المعارض والمؤتمرات',
                              fontSize: AppDimens.s16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.thr_violet_txt,
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(height: AppDimens.h12),
                            MText(
                              value: '#الأعمال',
                              color: AppColors.purple_txt,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(width: AppDimens.p8,),
                        Container(
                          width: Get.width*0.33,
                          height: Get.height*0.1,
                          child: ExhibitionCard(
                            cardNumber: '1234 5678 9000 8765',
                            validThru: "validThru",
                            daysNumber: "daysNumber",
                            holderName: 'HOLDER NAME',
                            cardType: "cardType",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    MText(
                      value: ': اختر عدد الليالي',
                      fontSize: AppDimens.s14,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.right,
                      color: AppColors.thr_violet_txt,
                    ),
                    SizedBox(height: 12),
                    NightsSelector(),
                    SizedBox(height: 24),
                    MText(
                      value:'وصف البطاقة',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.thr_violet_txt,
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 16),
                    CardDescription(),
                    SizedBox(height: 24),
                    MText(
                      value:'مميزات البطاقة',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.thr_violet_txt,
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 16),
                    CardFeatures(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
          ContinueButton(text: 'المتابعة للدفع'),
        ],
      ),
    );
  }
}





class PaymentCard extends StatelessWidget {
  final String cardNumber;
  final String holderName;
  final String expiryDate;
  final String cardType;

  const PaymentCard({
    Key? key,
    required this.cardNumber,
    required this.holderName,
    required this.expiryDate,
    required this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF0C3C78), Color(0xFF0D4C9D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 20,
            child: Row(
              children: [

                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(Icons.qr_code, color: Colors.white, size: 20),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MText(
                  value: cardNumber,
                  color: Colors.white,
                  fontSize: 16,
                  textDirection: TextDirection.ltr, // Card number should be LTR
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MText(
                          value: 'HOLDER NAME',
                          color: Colors.white60,
                          fontSize: 10,
                          textDirection: TextDirection.ltr,
                        ),
                        MText(
                          value: holderName,
                          color: Colors.white,
                          fontSize: 12,
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MText(
                          value: 'VALID THRU',
                          color: Colors.white60,
                          fontSize: 10,
                          textDirection: TextDirection.ltr,
                        ),
                        MText(
                          value: expiryDate,
                          color: Colors.white,
                          fontSize: 12,
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: MText(
              value: cardType,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}

class NightsSelector extends StatelessWidget {
  const NightsSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PriceDisplay(price: '3,750', currency: 'ريال'),
        const NightOption(nights: 30, isSelected: false),
        const NightOption(nights: 15, isSelected: false),
        const NightOption(nights: 5, isSelected: true),
      ],
    );
  }
}

class NightOption extends StatelessWidget {
  final int nights;
  final bool isSelected;

  const NightOption({
    Key? key,
    required this.nights,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepPurple.withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? Colors.deepPurple : Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: MText(
        value: '$nights ليلة',
        color: isSelected ? Colors.deepPurple : AppColors.dark_gray_txt,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

class PriceDisplay extends StatelessWidget {
  final String price;
  final String currency;

  const PriceDisplay({
    Key? key,
    required this.price,
    required this.currency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MText(
          value: currency,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        const SizedBox(width: 4),
        MText(
          value: price,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ],
    );
  }
}

class CardDescription extends StatelessWidget {
  const CardDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const MText(
          value: 'منصة "مؤتمرات" العالمية هي الحل المثالي للعائلات التي تبحث عن مرونة وتوفير في السفر مع امكانية قضاء عطلات متعددة في ٣٠ دولة ضمن الدول الرئيسية التي تجعل هذه المنصة خيارة مميزة للأستخدام العائلي مرونة في تواريخ الان. تقدم العائلات عددًا معينًا من الليالي بمراعاة لنفسيه.',
          fontSize: 14,
          maxLines: 5,
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {},
          child: const MText(
            value: 'المزيد',
            color: Colors.deepPurple,
          ),
        ),
      ],
    );
  }
}

class CardFeatures extends StatelessWidget {
  const CardFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FeatureItem(text: 'إدارة البطاقة الخاصة بك بسهولة'),
        FeatureItem(text: 'إضافة رصيد الليالي بسعر خاص'),
        FeatureItem(text: 'الحجز في أكثر من دولة'),
        FeatureItem(text: 'إهداء الليالي للعائلة والأصدقاء'),
        FeatureItem(text: 'تثبيت الأسعار طوال فترة صلاحية البطاقة'),
        FeatureItem(text: 'خدمة عملاء 7/24'),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String text;

  const FeatureItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: MText(
              value: text,
              fontSize: 14,
              textAlign: TextAlign.right,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}

