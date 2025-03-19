
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_font.dart';

import '../../core/ui/app_colors.dart';
import 'm_text.dart';

class FeatureItem extends StatelessWidget {
  final String text;

  const FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MText(
            value: text,
            fontSize: 16,
            color: AppColors.dark_gray_txt,
            textDirection: TextDirection.rtl,
            fontFamily: AppFont.fontMedium,
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
      ),
    );
  }
}