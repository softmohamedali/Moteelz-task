
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/ui/app_colors.dart';
import 'm_text.dart';

class FeatureItem extends StatelessWidget {
  final String text;

  const FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MText(
          value: text,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.dark_gray_txt,
          textDirection: TextDirection.rtl,
        ),
        const SizedBox(width: 8),
        Container(
          padding:  EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 10,
          ),
        ),
      ],
    );
  }
}