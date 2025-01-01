import 'package:flutter/material.dart';

class AdaptiveDetailsContent extends StatelessWidget {
  const AdaptiveDetailsContent({
    super.key,
    required this.image,
    required this.caption,
    required this.description,
    required this.tags,
  });

  final Widget image;
  final Widget caption;
  final Widget description;
  final Widget tags;

  // Abstract - Measure - Branch

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMoreTallThanWide = constraints.maxHeight > constraints.maxWidth;
        if (isMoreTallThanWide) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [image, caption, description, tags],
          );
        } else {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image,
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [caption, description, tags],
              ),
            ],
          );
        }
      },
    );
  }
}
