import 'package:flutter/material.dart';

class ExhibitionCard extends StatelessWidget {

  const ExhibitionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final scale = height / 220;
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
          child: SizedBox(),
        );
      },
    );
  }
}