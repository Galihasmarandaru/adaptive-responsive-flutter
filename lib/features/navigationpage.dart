import 'package:adaptive_responsive/widgets/adaptive_details_content.dart';
import 'package:adaptive_responsive/widgets/custom_image.dart';
import 'package:adaptive_responsive/widgets/navigations/bottom_nav_bar.dart';
import 'package:adaptive_responsive/widgets/navigations/side_nav_rail.dart';
import 'package:flutter/material.dart';

class Navigationpage extends StatefulWidget {
  const Navigationpage({super.key});

  @override
  State<Navigationpage> createState() => _NavigationpageState();
}

class _NavigationpageState extends State<Navigationpage> {
  @override
  Widget build(BuildContext context) {
    final useSideNavRail = MediaQuery.sizeOf(context).width >= 600;
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (useSideNavRail) const SideNavRail(selectedIndex: 0),
          // Expanded(
          //   child: Container(
          //     color: Colors.amberAccent,
          //   ),
          // ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            width: MediaQuery.sizeOf(context).width * 0.6,
            color: Colors.amber,
            child: const AdaptiveDetailsContent(
              image: CustomImage(
                index: 2,
              ),
              caption: Text('Hello World'),
              description: Text('This is The Descriptions'),
              tags: Text('Tags'),
            ),
          )
        ],
      ),
      bottomNavigationBar: useSideNavRail
          ? null
          : const BottomNavBar(
              selectedIndex: 0,
            ),
    );
  }
}
