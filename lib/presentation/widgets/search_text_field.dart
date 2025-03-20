import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moteelz/core/ui/app_assets.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_font.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;

  const SearchTextField({
    super.key,
    required this.controller,
    this.hintText = 'ابحث عن بطاقة',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.gray_border,
            width: 1.0,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: AppColors.primry_gray_txt,
                  fontFamily: AppFont.fontRegular
                ),
                onChanged: onChanged,
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
            const SizedBox(width: 8,),
            SvgPicture.asset(AppAssets.search)
          ],
        ),
      ),
    );
  }
}