import 'package:adaptive_responsive/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key, required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 840),
        child: GridView.builder(
          itemCount: itemCount,
          padding: const EdgeInsets.all(6),
          itemBuilder: (context, index) {
            return CustomImage(
              index: index,
              onTap: () {
                debugPrint('Nice');
              },
            );
          },
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
        ),
      ),
    );
  }
}
