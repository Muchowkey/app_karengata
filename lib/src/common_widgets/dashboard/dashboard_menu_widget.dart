import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({
    super.key,
    required this.menuTitle,
    required this.menuSubtitle,
    required this.icon,
    required this.onPress,
  });

  final String menuTitle;
  final String menuSubtitle;
  final VoidCallback onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
          backgroundColor: tCardBgColor,
          side: const BorderSide(
            width: 1.0,
            color: tCardBgColor,
            style: BorderStyle.solid,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(menuTitle),
            Text(menuSubtitle),
          ],
        ),
      ),
    );
  }
}
