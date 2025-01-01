import 'package:flutter/material.dart';

class DialogDetailItem extends StatefulWidget {
  const DialogDetailItem({super.key});

  @override
  State<DialogDetailItem> createState() => _DialogDetailItemState();
}

class _DialogDetailItemState extends State<DialogDetailItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.only(top: 16, left: 16),
              color: Colors.blue,
              child: const Icon(Icons.close_outlined),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amberAccent,
              child: const Center(child: Text('NICE')),
            ),
          ),
        ],
      ),
    );
  }
}
