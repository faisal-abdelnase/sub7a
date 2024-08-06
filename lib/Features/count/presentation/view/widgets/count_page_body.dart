import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/contaner_for_score.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_circular_percent_indicator.dart';
import 'package:sub7a/core/utils/colors.dart';


class CountPageBody extends StatelessWidget {
  const CountPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const ContanerForScore(),
        
            const SizedBox(
                height: 40,
              ),
        
        
            Text("الاستغفار", 
            style: TextStyle(
              color: red,
              fontSize: 32
            ),),
        
        
        
        
              const CustomCircularPercentIndicator(),
        
        
            
              
              const SizedBox(
                height: 40,
              ),
        
              Text("مرات التكرار : 0", 
                  style: TextStyle(
                    color: red,
                    fontSize: 24
                  ),),
        
                  Text("المجموع : 0", 
                  style: TextStyle(
                    color: red,
                    fontSize: 24
                  ),),
            
          ],
        ),
      ],
    );
  }
}

