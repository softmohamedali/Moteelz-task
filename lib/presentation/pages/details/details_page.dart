import 'package:context_plus/context_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/core/ui/app_font.dart';
import 'package:moteelz/presentation/pages/details_payment_steps/widgets/option_selector.dart';
import 'package:readmore/readmore.dart';
import 'package:signals/signals_flutter.dart';

import '../../widgets/bottom_continue_btn.dart';
import '../../widgets/exhibition_card.dart';
import '../../widgets/feuture_item.dart';
import '../../widgets/m_text.dart';
import '../details_payment_steps/details_payment_steps.dart';
import 'details_viewmodel.dart';

final _walletDetailsViewModel = WalletDetailsViewModel();
final _walletDetailsViewModelRef = Ref<WalletDetailsViewModel>();
class DetailsScreen extends StatelessWidget {
  final int walletId;
  const DetailsScreen({
    Key? key,
    required this.walletId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = stepsViewmodelRef.bind(context, () => detailsPaymentStepsViewModel);
    final viewModel = _walletDetailsViewModelRef.bind(context, () => _walletDetailsViewModel);
    viewModel.walletId.value=walletId;
    return Scaffold(

      backgroundColor: AppColors.back_ground_gray,
      body:  Watch((context){
        final isLoading = viewModel.isLoadingSignal.value;
        final error = viewModel.errorSignal.value;

        if (isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (error != null) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => viewModel.fetchWalletDetails(),
                  child: const MText(value: 'حاول مرة أخرى'),
                ),
              ],
            ),
          );
        }


        return Column(
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
                          const Column(
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
                          const SizedBox(width: AppDimens.p8,),
                          SizedBox(
                            width: Get.width*0.33,
                            height: Get.height*0.1,
                            child: ExhibitionCard(
                              img: viewModel.walletSignal.value?.walletImage??"",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      const MText(
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
                      const ReadMoreText(
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
                      const MText(
                        value:'مميزات البطاقة',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.thr_violet_txt,
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 16),
                      if(viewModel.walletSignal.value?.walletFeatures!=null||viewModel.walletSignal.value!.walletFeatures.isNotEmpty)
                        Container(
                            padding: EdgeInsets.all(AppDimens.p16),
                            decoration: BoxDecoration(
                                color: AppColors.back_ground_card_gray,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(width: 0.5,color: AppColors.gray_border)
                            ),
                            child: Column(
                              children: [
                                ...viewModel.walletSignal.value!.walletFeatures.map((feature) {
                                  return Column(
                                    children: [
                                      FeatureItem(text: feature.name),
                                      const SizedBox(height: 16),
                                    ],
                                  );
                                }).toList(),
                              ],
                            )
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
        );
      }),
    );
  }
}





