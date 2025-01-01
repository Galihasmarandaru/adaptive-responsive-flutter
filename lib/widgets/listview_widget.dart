import 'dart:math';

import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
    // final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];
    final Random random = Random();

    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              constraints: constraints * 0.5,
              // color: Colors.amber[colorCodes[index]],
              // child: Center(child: Text('Entry ${entries[index]}')),
              child: Image.network(
                fit: BoxFit.fill,
                'https://picsum.photos/id/${random.nextInt(6) + 1}/400/300',
                loadingBuilder: (context, child, loadingProgress) {
                  return loadingProgress != null
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : child;
                },
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 6),
        );
      },
    );
  }
}
