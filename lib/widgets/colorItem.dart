import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 36,
      ),
    )
        : CircleAvatar(
      backgroundColor: color,
      radius: 38,
    );
  }
}
