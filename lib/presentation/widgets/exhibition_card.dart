import 'package:flutter/material.dart';
import 'package:moteelz/core/ui/app_assets.dart';

class ExhibitionCard extends StatelessWidget {
  final String img;
  const ExhibitionCard({
    Key? key, required this.img,
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
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.network(
            img,
            fit: BoxFit.fill,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            },
          )
        );
      },
    );
  }
}