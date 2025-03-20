import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_dimen.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../../data/dto/wallets_response/wallet_model/day_option/dey_option.dart';
import '../../../widgets/m_text.dart';
import 'package:dotted_border/dotted_border.dart';

class OptionsSelector extends StatelessWidget {
  final List<DayOption> options;
  final Function(DayOption) onSelect;
  final dynamic selected;
  const OptionsSelector({
    Key? key,
    required this.options,
    required this.onSelect,
    this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        reverse:true,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];
          final isSelected = selected == option;
          return InkWell(
            onTap: (){
              onSelect(option);
            },
            child: NightOption(
              nights: option.days,
              isSelected: isSelected,
            ),
          );
        },
      ),
    );
  }
}


class NightOption extends StatelessWidget {
  final String nights;
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