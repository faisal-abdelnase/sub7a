import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.score, required this.currentColor,
  });

  final String score;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(10, 40)
      ),
      onPressed: (){}, 
      child: Text(score, 
      style: TextStyle(
        color: currentColor
      ),));
  }
}