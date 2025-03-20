import 'package:context_plus/context_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:moteelz/core/ui/app_assets.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/presentation/widgets/dotted_divider.dart';
import 'package:moteelz/presentation/widgets/moteelz_container_details.dart';
import 'package:signals/signals_flutter.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../widgets/bottom_continue_btn.dart';
import '../../../widgets/m_text.dart';
import '../../../widgets/my_text_field.dart';
import '../../../widgets/solid_button.dart';
import '../details_payment_steps.dart';
import '../widgets/payment_card_details.dart';
import '../widgets/price_details_section.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = detailsPaymentViewmodelRef.bindValue(context, detailsPaymentStepsViewModel);
    return Scaffold(
      backgroundColor: AppColors.back_ground_gray,
      body: Watch((context){
        return Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.p30),
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 20),
                      PaymentCard(
                        wallet: viewModel.walletSignal.value!,
                        dayOption: viewModel.selectedNightSignal.value!,
                      ),
                      const SizedBox(height: 20),
                      const MText(
                        value: 'هل لديك كوبون خصم؟',
                        fontWeight: FontWeight.bold,
                        textDirection: TextDirection.rtl,
                        fontSize: AppDimens.s18,
                        color: AppColors.thr_violet_txt,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        textDirection: TextDirection.rtl,
                        children: [
                          Expanded(
                            child: MyTextField(
                              controller: viewModel.couponCode,
                              hintText: 'ادخل كوبون الخصم',
                              // enabled: !viewModel.isValidatingCoupon.value && !viewModel.hasCoupon.value,
                              // errorText: viewModel.couponErrorMessage.value,
                            ),
                          ),
                          const SizedBox(width: 8),
                          MySolidButton(
                            text: viewModel.isValidatingCoupon.value
                                ? 'جاري التحقق...'
                                : viewModel.hasCoupon.value
                                ? 'تم التطبيق'
                                : 'تطبيق',
                            borderRadius: AppDimens.p12,
                            // isLoading: viewModel.isValidatingCoupon.value,
                            // enabled: !viewModel.hasCoupon.value,
                            onPressed: () => viewModel.applyCouponCode(),
                          )
                        ],
                      ),
                      if (viewModel.hasCoupon.value) ...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                              color: Colors.green[50],
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.green)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            textDirection: TextDirection.rtl,
                            children: [
                              Icon(Icons.check_circle, color: Colors.green, size: 16),
                              const SizedBox(width: 6),
                              MText(
                                value: "خصم ${(viewModel.couponDiscount.value * 100).toInt()}% مطبق",
                                color: Colors.green[800]!,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 20),
                      PriceDetailsSection(
                        wallet: viewModel.walletSignal.value!,
                        dayOption: viewModel.selectedNightSignal.value!,
                        discount: viewModel.hasCoupon.value ? viewModel.couponDiscount.value : 0,
                      ),
                      SizedBox(height: 20),
                      const DottedDivider(
                        dashWidth: 3,
                      ),
                      const SizedBox(height: 30),
                      const MText(
                        value: 'بيانات الدفع',
                        fontWeight: FontWeight.bold,
                        textDirection: TextDirection.rtl,
                        fontSize: AppDimens.s18,
                        color: AppColors.thr_violet_txt,
                      ),
                      const SizedBox(height: AppDimens.p8),
                      Form(
                        key: viewModel.formKey,
                        child: MoteelzContainer(
                          padding: AppDimens.p8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const SizedBox(height: 16),
                              Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  SvgPicture.asset(AppAssets.radio),
                                  const SizedBox(width: 4,),
                                  const Expanded(
                                    child: MText(
                                      value: 'بطاقة الإئتمان او الخصم المباشر',
                                      fontWeight: FontWeight.bold,
                                      textDirection: TextDirection.rtl,
                                      fontSize: AppDimens.s14,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Image.asset(
                                      AppAssets.payments,
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
                                controller: viewModel.cardHolderName,
                                hintText: 'Nader Sayed | |',
                                validator: viewModel.validateCardHolderName,
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
                                controller: viewModel.cardNumber,
                                hintText: '1234 1234 1234 1234',
                                keyboardType: TextInputType.number,
                                validator: viewModel.validateCardNumber,
                              ),
                              const SizedBox(height: 16),
                              Row(
                                textDirection: TextDirection.rtl,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const MText(
                                          value: 'انتهاء الصلاحية',
                                          fontWeight: FontWeight.bold,
                                          textDirection: TextDirection.rtl,
                                          fontSize: AppDimens.s16,
                                        ),
                                        const SizedBox(height: 8),
                                        MyTextField(
                                          controller: viewModel.cardExpire,
                                          hintText: '25/08',
                                          keyboardType: TextInputType.datetime,
                                          validator: viewModel.validateCardExpiry,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const MText(
                                          value: 'CVC',
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppDimens.s16,
                                        ),
                                        const SizedBox(height: 8),
                                        MyTextField(
                                          controller: viewModel.cardCvc,
                                          hintText: '***',
                                          keyboardType: TextInputType.number,
                                          obscureText: true,
                                          validator: viewModel.validateCVC,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            ContinueButton(
              text: viewModel.isSubmitting.value ? 'جاري الدفع...' : 'إدفع الآن',
              onTap: (){
                viewModel.processPayment();
              },
            ),
          ],
        );
      }),
    );
  }
}