import 'package:context_plus/context_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/core/ui/app_font.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/widgets/option_selector.dart';
import 'package:readmore/readmore.dart';

import '../../widgets/bottom_continue_btn.dart';
import '../../widgets/exhibition_card.dart';
import '../../widgets/feuture_item.dart';
import '../../widgets/m_text.dart';
import '../details_payment_steps/details_payment_steps.dart';
import '../details_payment_steps/details_payment_steps_viewmodel.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = stepsViewmodel.bind(context, () => detailsPaymentStepsViewModel);
    return Scaffold(
      backgroundColor: AppColors.back_ground_gray,
      body:  Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
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
                    OptionsSelector(),
                    SizedBox(height: 24),
                    MText(
                      value:'وصف البطاقة',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.thr_violet_txt,
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 12),
                    ReadMoreText(
                      'منصة ',
                      trimMode: TrimMode.Length,
                      trimLines: 5,
                      colorClickableText: Colors.pink,
                      trimCollapsedText: 'المزيد',
                      trimExpandedText: '',
                      textAlign: TextAlign.right,
                      style:  TextStyle(
                          fontSize: AppDimens.s14,
                          fontFamily: AppFont.fontRegular
                      ),
                      moreStyle: TextStyle(
                          fontSize: AppDimens.s14,
                        fontFamily: AppFont.fontRegular,
                        color: AppColors.purple_txt,
                          decoration: TextDecoration.underline
                      ),
                    ),
                    SizedBox(height: 24),
                    MText(
                      value:'مميزات البطاقة',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.thr_violet_txt,
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.all(AppDimens.p16),
                        decoration: BoxDecoration(
                          color: AppColors.back_ground_card_gray,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 0.5,color: AppColors.gray_border)
                        ),
                        child: CardFeatures()
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
          ContinueButton(
            onTap: (){
              print("------------------clciked");
              controller.goNext();
            },
              text: 'المتابعة للدفع'
          ),
        ],
      ),
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
      ],
    );
  }
}



