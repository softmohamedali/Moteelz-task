import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_dimen.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../widgets/m_text.dart';
import '../../details/details_page.dart';
import 'package:dotted_border/dotted_border.dart';

class OptionsSelector extends StatelessWidget {
  const OptionsSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PriceDisplay(price: '3,750', currency: 'ريال'),
        Row(
          children: [
            const NightOption(nights: 30, isSelected: false),
            const NightOption(nights: 15, isSelected: false),
            const NightOption(nights: 5, isSelected: true),
          ],
        ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: isSelected?
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:AppColors.primary.withAlpha(50) ,
        ),
        child: DottedBorder(
          borderType: BorderType.RRect,  // You can use BorderType.Circle or BorderType.Rect
          radius: Radius.circular(12),
          dashPattern: [3, 3],  // Adjust dash pattern [dash length, space length]
          strokeWidth: 1,
          color: AppColors.primary,  // Border color
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            alignment: Alignment.center,
            child: MText(
              value: '$nights ليالي',
              color:  AppColors.primary ,
              fontSize: AppDimens.s12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
          :
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.deepPurple.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:  Colors.grey.shade300,
            width: 1,
          ),
        ),
        child: MText(
          value: '$nights ليلة',
          color:  AppColors.dark_gray_txt,
          fontWeight:  FontWeight.normal,
        ),
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
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: AppDimens.s20,
        ),
        const SizedBox(width: 4),
        MText(
          value: price,
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: AppDimens.s20,
        ),
      ],
    );
  }
}