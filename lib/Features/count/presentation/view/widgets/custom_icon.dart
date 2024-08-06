import 'package:flutter/material.dart';


class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.iconData, required this.currentColor,
  });

  final IconData iconData;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Icon(iconData,
        color: currentColor,
        size: 20,
        ),
      ),
    );
  }
}