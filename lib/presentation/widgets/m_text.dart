
import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_font.dart';

class MText extends StatelessWidget {
  final String value;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final int? maxLines;
  final String fontFamily;
  final bool underline;

  const MText({
    Key? key,
    required this.value,
    this.fontSize = 14.0,
    this.color = AppColors.dark_gray_txt,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.textDirection = TextDirection.rtl,
    this.maxLines=1,
    this.fontFamily=AppFont.fontRegular,
    this.underline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: textAlign,
      textDirection: textDirection,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}