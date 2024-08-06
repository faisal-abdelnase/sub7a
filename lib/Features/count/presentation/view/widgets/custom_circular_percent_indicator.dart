import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key, required this.currentColor,
  });

  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80,
      percent: .5,
      lineWidth: 8,
      progressColor: currentColor,
      backgroundColor: currentColor.withOpacity(0.2),
      center: Icon(
    Icons.touch_app,
    size: 64,
    color: currentColor,
    ),
            
    header: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text("2", 
              style: TextStyle(
      color: currentColor,
      fontSize: 24
              ),),
    ),
            
            
    );
  }
}


