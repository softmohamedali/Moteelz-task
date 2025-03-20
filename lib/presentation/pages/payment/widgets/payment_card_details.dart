import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../../core/ui/app_dimen.dart';
import '../../../widgets/exhibition_card.dart';
import '../../../widgets/m_text.dart';
import '../../../widgets/moteelz_container_details.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MoteelzContainer(
      padding: AppDimens.p8,
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
              width: Get.width*0.3,
              height: Get.height*0.08,
              child: ExhibitionCard(img: '',)
          ),
          SizedBox(width: AppDimens.h8,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      padding:  EdgeInsets.symmetric(horizontal: 4, ),
                      decoration: BoxDecoration(
                        color: AppColors.sec_pinc_txt.withAlpha(50),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '${"5"} ${"ليالي"}',
                        textDirection: TextDirection.rtl,
                        style:  TextStyle(
                          color: AppColors.sec_pinc_txt,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: MText(
                        value:'المعارض والمؤتمرات',
                        fontWeight: FontWeight.bold,
                        textDirection: TextDirection.rtl,
                        fontSize: AppDimens.s18,
                        color: AppColors.thr_violet_txt,
                      ),
                    ),
                  ],
                ),
                MText(
                  value:'#الأعمال',
                  color: AppColors.primry_gray_txt,
                  textDirection: TextDirection.rtl,
                  fontWeight: FontWeight.bold,
                ),
                MText(
                  value: '3,750 ر.س',
                  color: Color(0xFF8B5CF6),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}