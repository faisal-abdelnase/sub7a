import 'package:flutter/material.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/contaner_for_score.dart';
import 'package:sub7a/core/utils/colors.dart';


class CountPageBody extends StatelessWidget {
  const CountPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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

        Text("2", 
        style: TextStyle(
          color: red,
          fontSize: 24
        ),),


        const SizedBox(
            height: 20,
          ),


        Icon(
          Icons.touch_app,
          size: 64,
          color: red,
          ),
          
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
    );
  }
}


