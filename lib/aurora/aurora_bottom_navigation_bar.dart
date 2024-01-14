import 'package:flutter/material.dart';

class AuroraBottomNavigationBar extends StatelessWidget {
  const AuroraBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: Colors.white,
      items: items,
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
    );
  }
}
