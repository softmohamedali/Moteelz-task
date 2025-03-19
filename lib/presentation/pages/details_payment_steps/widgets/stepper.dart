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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // For Arabic
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: List.generate(steps.length * 2 - 1, (index) {
            // For even indices, render step indicators
            if (index % 2 == 0) {
              final stepIndex = index ~/ 2;
              final isActive = stepIndex <= currentStep;

              return Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: isActive ? activeColor : inactiveColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '${steps.length - stepIndex}',
                          style: TextStyle(
                            color: isActive ? Colors.white : const Color(0xFF6B7280),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      steps[stepIndex],
                      style: TextStyle(
                        color: isActive ? activeColor : const Color(0xFF6B7280),
                        fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              );
            }
            // For odd indices, render connecting lines
            else {
              final beforeStepIndex = index ~/ 2;
              final isActive = beforeStepIndex <= currentStep - 1;
              // Calculate progress percentage for the current step's line
              double progressPercentage = 0.0;
              if (beforeStepIndex == currentStep - 1) {
                progressPercentage = 0.5; // Half filled when at step 1
              } else if (beforeStepIndex < currentStep - 1) {
                progressPercentage = 1.0; // Fully filled for completed steps
              }

              return Expanded(
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
                      // Progress line (active) - With steeper slope using ClipPath
                      ClipPath(
                        clipper: SteeperLineClipper(progressPercentage),
                        child: Container(
                          height: 4,
                          color: activeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
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

    // Start at the bottom-left


    // Calculate how much of the width to fill based on progress
    final fillWidth = size.width * progressPercentage;

    // Create a steeper line by adjusting the Y position
    path.lineTo(fillWidth, size.height * 0.1); // Make the line go upward for steeper effect
    path.lineTo(fillWidth, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

