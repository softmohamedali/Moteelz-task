import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_dimen.dart';
import 'package:moteelz/core/ui/app_font.dart';

import 'moteelz_container_details.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;

  const MyTextField({
    super.key,
    required this.controller,
    this.hintText = 'ابحث عن بطاقة',
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        style: const TextStyle(
            color: AppColors.primry_gray_txt,
            fontFamily: AppFont.fontRegular
        ),
        onChanged: onChanged,
        obscureText: obscureText,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: AppColors.primry_gray_txt,
              fontFamily: AppFont.fontRegular
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary),
            borderRadius: BorderRadius.circular(AppDimens.p12)
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.background),
              borderRadius: BorderRadius.circular(AppDimens.p12)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray_border),
              borderRadius: BorderRadius.circular(AppDimens.p12)
          ),
          hintTextDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}