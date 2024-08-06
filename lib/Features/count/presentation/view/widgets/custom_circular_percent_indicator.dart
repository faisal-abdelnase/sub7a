import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sub7a/core/utils/colors.dart';

class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80,
      percent: .5,
      lineWidth: 8,
      progressColor: red,
      backgroundColor: red.withOpacity(0.2),
      center: Icon(
    Icons.touch_app,
    size: 64,
    color: red,
    ),
            
    header: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text("2", 
              style: TextStyle(
      color: red,
      fontSize: 24
              ),),
    ),
            
            
    );
  }
}


