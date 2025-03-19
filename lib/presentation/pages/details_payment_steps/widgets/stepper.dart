import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;
  final List<String> steps;
  final Color activeColor;
  final Color inactiveColor;

  const CustomStepper({
    Key? key,
    required this.currentStep,
    required this.steps,
    this.activeColor = const Color(0xFF8B5CF6), // Purple color
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
                      color: currentStep >= 1 ? activeColor : inactiveColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: currentStep >= 1 ? Colors.white : const Color(0xFF6B7280),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    steps[0],
                    style: TextStyle(
                      color: currentStep >= 1 ? activeColor : const Color(0xFF6B7280),
                      fontWeight: currentStep >= 1 ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // Connecting line
            Expanded(
              flex: 2,
              child: Container(
                height: 40,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Base line (inactive)
                    Container(
                      height: 4,
                      color: inactiveColor,
                    ),
                    // Progress line (active)
                    ClipPath(
                      clipper: SteeperLineClipper(
                        currentStep == 0 ? 0.0 :
                        currentStep == 1 ? 0.5 : 1.0,
                      ),
                      child: Container(
                        height: 4,
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
                      color: currentStep >= 0 ? activeColor : inactiveColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: currentStep >= 0 ? Colors.white : const Color(0xFF6B7280),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    steps[1],
                    style: TextStyle(
                      color: currentStep >= 0 ? activeColor : const Color(0xFF6B7280),
                      fontWeight: currentStep >= 0 ? FontWeight.bold : FontWeight.normal,
                    ),
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

// Custom clipper for creating a steeper line
class SteeperLineClipper extends CustomClipper<Path> {
  final double progressPercentage;

  SteeperLineClipper(this.progressPercentage);

  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);

    // Calculate how much of the width to fill based on progress
    final fillWidth = size.width * progressPercentage;

    // Create a steeper line by adjusting the Y position
    path.lineTo(fillWidth, size.height * 0.1); // Make the line go upward for steeper effect
    path.lineTo(fillWidth, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}