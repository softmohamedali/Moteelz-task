import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moteelz/core/ui/app_assets.dart';

import '../../core/ui/app_colors.dart';
import '../../core/ui/app_dimen.dart';
import 'm_text.dart';

class ContinueButton extends StatelessWidget {
  final String text;
  final bool showIcon;
  final GestureTapCallback? onTap;

  const ContinueButton({
    Key? key,
    required this.text,
    this.onTap,
    this.showIcon=true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: Container(
          color: AppColors.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showIcon?SvgPicture.asset(
                AppAssets.backArrow,
                color: Colors.white,
              ):SizedBox(),
              SizedBox(width: showIcon?AppDimens.h12:0),
              MText(
                value: text,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),


            ],
          ),
        ),
      ),
    );
  }
}