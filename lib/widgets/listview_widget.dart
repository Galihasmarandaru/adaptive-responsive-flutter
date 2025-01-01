import 'package:adaptive_responsive/widgets/custom_image.dart';
import 'package:adaptive_responsive/widgets/dialog_detail_item.dart';
import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key, required this.totalItem});

  final int totalItem;

  @override
  Widget build(BuildContext context) {
    // final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
    // final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];

    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          itemCount: totalItem,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              constraints: constraints * 0.5,
              // color: Colors.amber[colorCodes[index]],
              // child: Center(child: Text('Entry ${entries[index]}')),
              child: CustomImage(
                index: index,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        const dialogContent = DialogDetailItem();
                        final showFullScreenDialog =
                            MediaQuery.sizeOf(context).width < 600;
                        if (showFullScreenDialog) {
                          return const Dialog.fullscreen(
                            child: dialogContent,
                          );
                        } else {
                          return Dialog(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 400),
                              child: dialogContent,
                            ),
                          );
                        }
                      });
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
