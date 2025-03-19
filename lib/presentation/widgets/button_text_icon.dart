import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_dimen.dart';

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
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: AppDimens.p10, vertical: AppDimens.p8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
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