import 'package:flutter/material.dart';
import 'package:sub7a/core/utils/colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.iconData,
  });

  final IconData iconData;

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
        color: red,
        size: 20,
        ),
      ),
    );
  }
}