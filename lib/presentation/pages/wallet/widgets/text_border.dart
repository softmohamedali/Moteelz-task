import 'package:flutter/cupertino.dart';
import 'package:moteelz/core/ui/app_font.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../widgets/m_text.dart';

class TextBorder extends StatelessWidget {
  final String value;
  const TextBorder({
    super.key,
    required this.value,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gray_border),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: MText(
            value: value,
            fontSize: 14, textDirection:TextDirection.rtl,
          fontFamily: AppFont.fontBold,
        ),
      ),
    );
  }
}
