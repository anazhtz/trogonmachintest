import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30.0)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.book,
            Icons.analytics,
            Icons.person,
          ],
          activeIndex: selectedIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: onItemTapped,
          backgroundColor: Colors.white,
          activeColor: const Color(0xFF673AB7),
          inactiveColor: Colors.grey,
          splashColor: const Color(0xFF7E57C2),
        ),
      ),
    );
  }
}
