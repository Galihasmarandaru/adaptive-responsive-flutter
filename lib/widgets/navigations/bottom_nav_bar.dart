import 'package:adaptive_responsive/abstract/destination.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      backgroundColor: Colors.teal,
      destinations: destinations.map((dest) {
        return NavigationDestination(
          icon: Icon(dest.icon),
          label: dest.label,
        );
      }).toList(),
    );
  }
}
