import 'package:flutter/material.dart';
import 'package:sub7a/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.score,
  });

  final String score;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(10, 40)
      ),
      onPressed: (){}, 
      child: Text(score, 
      style: TextStyle(
        color: red
      ),));
  }
}