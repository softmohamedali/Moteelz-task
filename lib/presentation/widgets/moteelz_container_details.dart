import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/ui/app_colors.dart';
import '../../core/ui/app_dimen.dart';

class MoteelzContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final double padding;
   MoteelzContainer({
    super.key,
    required this.child,
    this.borderRadius=AppDimens.p12,
     this.padding=AppDimens.p16
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(width: 0.2,color: AppColors.gray_border)
        ),
        child: child
    );
  }
}
