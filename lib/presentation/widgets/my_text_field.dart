import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_font.dart';

import 'moteelz_container_details.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function(String? value)? validator;

  const MyTextField({
    super.key,
    required this.controller,
    this.hintText = 'ابحث عن بطاقة',
    this.onChanged,
    this.keyboardType=TextInputType.none,
    this.obscureText=false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: MoteelzContainer(
        child: TextField(
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
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.primry_gray_txt,
                fontFamily: AppFont.fontRegular
            ),
            hintTextDirection: TextDirection.rtl,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
