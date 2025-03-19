import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppDimens.p30),
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
                    const DottedDivider(
                      dashWidth: 3,
                    ),
                    const SizedBox(height: 30),
                    MText(
                      value: 'بيانات الدفع',
                      fontWeight: FontWeight.bold,
                      textDirection: TextDirection.rtl,
                      fontSize: AppDimens.s18,
                      color: AppColors.thr_violet_txt,
                    ),
                    const SizedBox(height: AppDimens.p8),
                    MoteelzContainer(
                      padding: AppDimens.p8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 16),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              SvgPicture.asset("assets/icons/radio.svg"),
                              SizedBox(width: 4,),
                              Expanded(
                                child: const MText(
                                  value: 'بطاقة الإئتمان او الخصم المباشر',
                                  fontWeight: FontWeight.bold,
                                  textDirection: TextDirection.rtl,
                                  fontSize: AppDimens.s14,
                                  maxLines: 2,
                                ),
                              ),
                              Image.asset(
                                  "assets/images/payments.png",
                                  width: Get.width*0.22,
                                  height: 30
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          const MText(
                            value: 'اسم البطاقة',
                            fontWeight: FontWeight.bold,
                            textDirection: TextDirection.rtl,
                            fontSize: AppDimens.s16,
                          ),
                          const SizedBox(height: 8),
                          MyTextField(
                            controller: TextEditingController(),
                            hintText: 'Nader Sayed | |',
                          ),
                          const SizedBox(height: 16),
                          const MText(
                            value: 'رقم البطاقة',
                            fontWeight: FontWeight.bold,
                            textDirection: TextDirection.rtl,
                            fontSize: AppDimens.s16,
                          ),
                          const SizedBox(height: 8),
                          MyTextField(
                            controller: TextEditingController(),
                            hintText: '1234 1234 1234 1234',
                          ),
                          const SizedBox(height: 16),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    MText(
                                      value: 'انتهاء الصلاحية',
                                      fontWeight: FontWeight.bold,
                                      textDirection: TextDirection.rtl,
                                      fontSize: AppDimens.s16,
                                    ),
                                    const SizedBox(height: 8),
                                    MyTextField(
                                      controller: TextEditingController(),
                                      hintText: '25/08',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    MText(
                                      value: 'CVC',
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppDimens.s16,
                                    ),
                                    const SizedBox(height: 8),
                                    MyTextField(
                                      controller: TextEditingController(),
                                      hintText: '***',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
          ContinueButton(text:'إدفع الآن',),
        ],
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



