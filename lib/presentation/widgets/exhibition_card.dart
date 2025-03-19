import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'm_text.dart';

class ExhibitionCard extends StatelessWidget {
  final String cardNumber;
  final String validThru;
  final String daysNumber;
  final String holderName;
  final String cardType;

  ExhibitionCard({
    required this.cardNumber,
    required this.validThru,
    required this.daysNumber,
    required this.holderName,
    required this.cardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
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
            top: 16,
            left: 16,
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                const SizedBox(height: 8),
                Icon(Icons.wifi, color: Colors.white),
              ],
            ),
          ),

          // Moteelz logo
          const Positioned(
            top: 24,
            right: 24,
            child: MText(
              value:'MOTEELZ',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
            ),
          ),

          // Card number
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                cardNumber,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),

          // Valid thru
          Positioned(
            bottom: 48,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'VALID\nTHRU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                Text(
                  validThru,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Days number
          Positioned(
            bottom: 48,
            left: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'DAYS\nNO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                Text(
                  daysNumber,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Holder name and card type
          Positioned(
            bottom: 16,
            left: 16,
            child: Row(
              children: [
                Text(
                  holderName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  cardType,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}