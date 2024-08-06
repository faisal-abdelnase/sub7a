import 'package:flutter/material.dart';


class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.iconData,  this.onPressed,
  });

  final IconData iconData;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
    icon: Icon(iconData,
    color: Colors.white,
    size: 20,)
    );
  }
}