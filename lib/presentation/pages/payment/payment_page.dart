import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/presentation/pages/payment/widgets/payment_card_details.dart';
import 'package:moteelz/presentation/widgets/dotted_divider.dart';
import 'package:moteelz/presentation/widgets/moteelz_container_details.dart';

import '../../../core/ui/app_colors.dart';
import '../../widgets/bottom_continue_btn.dart';
import '../../widgets/m_text.dart';
import '../../widgets/my_text_field.dart';
import '../../widgets/solid_button.dart';


class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.back_ground_gray,
      body: Padding(
        padding: EdgeInsets.all(AppDimens.p30),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    PaymentCard(),
                    SizedBox(height: 20),
                    const MText(
                      value: 'هل لديك كوبون خصم؟',
                      fontWeight: FontWeight.bold,
                      textDirection: TextDirection.rtl,
                      fontSize: AppDimens.s18,
                      color: AppColors.thr_violet_txt,
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        Expanded(
                          child: MyTextField(
                              controller: TextEditingController(),
                              hintText: 'ادخل كوبون الخصم',
                          ),
                        ),
                        const SizedBox(width: 8),
                        const MySolidButton(
                          text: 'تطبيق',
                            borderRadius:AppDimens.p12
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    PriceDetailsSection(),
                    SizedBox(height: 20),
                    DottedDivider(
                      dashWidth: 3,
                    ),
                    SizedBox(height: 30),
                    PaymentMethodSection(),
                    SizedBox(height: 20),
                    CardDetailsSection(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            ContinueButton(text:'إدفع الآن',),
          ],
        ),
      ),

    );
  }
}


class PriceDetailsSection extends StatelessWidget {
  const PriceDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
         MText(
          value: 'تفاصيل المبلغ',
          fontSize: AppDimens.s18,
          fontWeight: FontWeight.bold,
          textDirection: TextDirection.rtl,
          color:AppColors.thr_violet_txt ,
        ),
        SizedBox(height: AppDimens.h8,),
        MoteelzContainer(
          child: Column(
            children: [
              const SizedBox(height: 8),
              _buildPriceRow('5 ليالي', '3,750 ر.س'),
              _buildPriceRow('ضريبة القيمة المضافة (15%)', '563 ر.س'),
              DottedDivider(
                dashWidth: 3,
              ),
              _buildPriceRow('المبلغ الإجمالي', '4,313 ر.س', isTotal: true),],
          ),
        ),
      ],
    );
  }

  Widget _buildPriceRow(
      String label,
      String price,
      {
        bool isTotal = false,
      }
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MText(
            value: label,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: isTotal ? AppColors.thr_violet_txt :AppColors.primry_gray_txt,
            fontSize: AppDimens.s16,
          ),
          MText(
            value: price,
            color: isTotal ? AppColors.purple_txt : Colors.grey,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            fontSize: AppDimens.s20,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MText(
            value: 'بيانات الدفع',
            fontWeight: FontWeight.bold,
            textDirection: TextDirection.rtl,
            fontSize: AppDimens.s18,
            color: AppColors.thr_violet_txt,
          ),
          const SizedBox(height: 16),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Radio(
                value: true,
                groupValue: true,
                onChanged: (value) {},
                activeColor: const Color(0xFF8B5CF6),
              ),
              const Text(
                'بطاقة الإئتمان او الخصم المباشر',
                style: TextStyle(fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              const Spacer(),
              Image.asset('assets/visa.png', width: 30, height: 20),
              const SizedBox(width: 4),
              Image.asset('assets/mastercard.png', width: 30, height: 20),
              const SizedBox(width: 4),
              Image.asset('assets/mada.png', width: 30, height: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class CardDetailsSection extends StatelessWidget {
  const CardDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'اسم البطاقة',
            style: TextStyle(fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 8),
          TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: 'Nader Sayed | |',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'رقم البطاقة',
            style: TextStyle(fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 8),
          TextField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: '1234 1234 1234 1234',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'انتهاء الصلاحية',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: '25/08',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'CVC',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      textAlign: TextAlign.right,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '***',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

