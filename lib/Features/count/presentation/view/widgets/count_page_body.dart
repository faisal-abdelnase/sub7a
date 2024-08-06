import 'package:flutter/material.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/contaner_for_score.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_circular_percent_indicator.dart';
import 'package:sub7a/core/utils/colors.dart';


class CountPageBody extends StatefulWidget {
  const CountPageBody({super.key});

  @override
  State<CountPageBody> createState() => _CountPageBodyState();
}

class _CountPageBodyState extends State<CountPageBody> {

  Color curentColor = red;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ContanerForScore(currentColor:curentColor ,),
        
            const SizedBox(
                height: 40,
              ),
        
        
            Text("الاستغفار", 
            style: TextStyle(
              color: curentColor,
              fontSize: 32
            ),),
        
        
        
        
              CustomCircularPercentIndicator(currentColor: curentColor,),
        
        
            
              
              const SizedBox(
                height: 40,
              ),
        
              Text("مرات التكرار : 0", 
                  style: TextStyle(
                    color: curentColor,
                    fontSize: 24
                  ),),
        
                  Text("المجموع : 0", 
                  style: TextStyle(
                    color: curentColor,
                    fontSize: 24
                  ),),
            
          ],
        ),

        const Spacer(),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio(
              fillColor: WidgetStateColor.resolveWith(
                (states) => red
              ),
              value: red, 
              groupValue: curentColor, 
              onChanged: (value){
                curentColor = value!;
                setState(() {
                  
                });
              }),

            Radio(

              fillColor: WidgetStateColor.resolveWith(
                (states) => black
              ),
              value: black, 
              groupValue: curentColor, 
              onChanged: (value){
                curentColor = value!;

                setState(() {
                  
                });
              }),

            Radio(

              fillColor: WidgetStateColor.resolveWith(
                (states) => move
              ),
              value: move, 
              groupValue: curentColor, 
              onChanged: (value){
                curentColor = value!;

                setState(() {
                  
                });
              }),
            
          ],
        )
      ],
    );
  }
}

