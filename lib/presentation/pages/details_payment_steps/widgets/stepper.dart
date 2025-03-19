import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_font.dart';
import 'package:moteelz/presentation/widgets/m_text.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;
  final List<String> steps;
  final Color activeColor;
  final Color inactiveColor;

  const CustomStepper({
    Key? key,
    required this.currentStep,
    required this.steps,
    this.activeColor = AppColors.primary, // Purple color
    this.inactiveColor = const Color(0xFFE5E7EB), // Light gray
  }) : assert(steps.length == 2, 'This CustomStepper is designed for exactly 2 steps'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // For Arabic
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Step 2
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: currentStep >= 1 ? activeColor : activeColor.withAlpha(50),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: MText(
                        value: '1',
                        color: currentStep >= 1 ? Colors.white : AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  MText(
                    value: steps[0],
                    color: Colors.black,
                    fontWeight: currentStep >=1 ? FontWeight.bold : FontWeight.normal,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 40,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 8,
                      color: inactiveColor,
                    ),
                    // Progress line (active) - Modified for RTL progress
                    ClipPath(
                      clipper: RTLSteeperLineClipper(
                        currentStep == 0 ? 0.0 :
                        currentStep == 1 ? 0.5 : 1.0,
                      ),
                      child: Container(
                        height: 8,
                        color: activeColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Step 1
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: currentStep == 2 ? activeColor : activeColor.withAlpha(50),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: MText(
                        value: '2',
                        color: currentStep == 2 ? Colors.white : AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  MText(
                    value: steps[1],
                    color: currentStep ==2 ?  Colors.black : AppColors.primry_gray_txt,
                    fontWeight: currentStep ==2 ? FontWeight.bold : FontWeight.normal,
                    fontFamily: AppFont.fontBold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom clipper for creating a steeper line with Right-to-Left progress
class RTLSteeperLineClipper extends CustomClipper<Path> {
  final double progressPercentage;

  RTLSteeperLineClipper(this.progressPercentage);

  @override
  Path getClip(Size size) {
    final path = Path();

    // Start from the right side for RTL
    path.moveTo(size.width, 0);

    // Calculate how much of the width to fill based on progress
    final fillWidth = size.width * (1 - progressPercentage);

    // Create a steeper line from right to left
    path.lineTo(fillWidth, size.height * 0.1);
    path.lineTo(fillWidth, size.height);
    path.lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}