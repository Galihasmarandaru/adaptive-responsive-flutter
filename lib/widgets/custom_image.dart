import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.index,
    this.onTap,
  });

  final int index;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.network(
        fit: BoxFit.fill,
        'https://picsum.photos/id/${index + 1}/400/300',
        loadingBuilder: (context, child, loadingProgress) {
          return loadingProgress != null
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : child;
        },
      ),
    );
  }
}
