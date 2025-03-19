import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_colors.dart';
import 'package:moteelz/core/ui/app_font.dart';

import 'm_text.dart';

class ExhibitionCard extends StatelessWidget {
  final String cardNumber;
  final String validThru;
  final String daysNumber;
  final String holderName;
  final String cardType;

  const ExhibitionCard({
    Key? key,
    required this.cardNumber,
    required this.validThru,
    required this.daysNumber,
    required this.holderName,
    required this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Get available width and height
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        // Calculate scale factors based on original design (220 height)
        final scale = height / 220;

        // Calculate font sizes
        final titleFontSize = 24.0 * scale;
        final cardNumberFontSize = 24.0 * scale;
        final labelFontSize = 10.0 * scale;
        final valueFontSize = 18.0 * scale;
        final bottomTextSize = 14.0 * scale;

        // Calculate icon sizes
        final qrSize = 60.0 * scale;
        final iconSize = 36.0 * scale;
        final smallIconSize = 24.0 * scale;

        // Calculate spacing
        final padding = 16.0 * scale;
        final smallPadding = 8.0 * scale;

        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16 * scale),
            color: Colors.blue[700],
            image: const DecorationImage(
              image: AssetImage("assets/images/card_back.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // QR code and NFC icon
              Positioned(
                top: padding,
                left: padding,
                child: Column(
                  children: [
                    Container(
                      width: qrSize,
                      height: qrSize,
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12 * scale),
                      ),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: iconSize,
                      ),
                    ),
                    SizedBox(height: smallPadding),
                    Icon(Icons.wifi, color: Colors.white, size: smallIconSize),
                  ],
                ),
              ),

              // Moteelz logo
              Positioned(
                top: padding,
                right: padding,
                child: MText(
                  value: 'MOTEELZ',
                  fontSize: titleFontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  textDirection: TextDirection.ltr,
                  fontFamily: AppFont.fontRegular,
                ),
              ),

              // Card number - make it adaptive to fit the width
              Positioned(
                top: height * 0.4, // 40% from top
                left: padding,
                right: padding,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    cardNumber,
                    style: TextStyle(
                      fontSize: cardNumberFontSize,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),

              // Valid thru
              Positioned(
                bottom: height * 0.22, // 22% from bottom
                left: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VALID\nTHRU',
                      style: TextStyle(
                        fontSize: labelFontSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.ltr,
                    ),
                    Text(
                      validThru,
                      style: TextStyle(
                        fontSize: valueFontSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.ltr,
                    ),
                  ],
                ),
              ),

              // Days number
              Positioned(
                bottom: height * 0.22, // 22% from bottom
                left: width * 0.4, // 40% from left
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DAYS\nNO',
                      style: TextStyle(
                        fontSize: labelFontSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.ltr,
                    ),
                    Text(
                       daysNumber,
                      style: TextStyle(
                        fontSize: valueFontSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.ltr,
                    ),
                  ],
                ),
              ),

              // Holder name and card type
              Positioned(
                bottom: padding,
                left: padding,
                right: padding,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                         holderName,
                        style: TextStyle(
                          fontSize: bottomTextSize,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.ltr,
                      ),
                      SizedBox(width: smallPadding),
                      Text(
                         cardType,
                        style: TextStyle(
                          fontSize: bottomTextSize,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.ltr,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}