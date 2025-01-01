import 'package:adaptive_responsive/widgets/listview_widget.dart';
import 'package:adaptive_responsive/widgets/navigation_bar_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: <Widget>[
          const ListviewWidget(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.redAccent,
          ),
        ][currentPageIndex],
      ),
      bottomNavigationBar: NavigationBarWidget(
        currentIndex: currentPageIndex,
        onIndexChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
