import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_dimen.dart';

import 'm_text.dart';

class FilterButton extends StatelessWidget {
  final String svgString;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;

  const FilterButton({
    super.key,
    required this.svgString,
    required this.text,
    this.backgroundColor = AppColors.primary,
    this.textColor = Colors.white,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: AppDimens.p30, vertical: AppDimens.p20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white)
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MText(
              value: text,
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: AppDimens.s20,

            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              svgString,
              colorFilter: ColorFilter.mode(textColor, BlendMode.srcIn),
              width: 24,
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}