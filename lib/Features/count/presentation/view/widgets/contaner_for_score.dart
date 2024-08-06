import 'package:flutter/material.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_button.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_icon.dart';


class ContanerForScore extends StatelessWidget {
  const ContanerForScore({
    super.key, required this.currentColor,
  });

  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        color: currentColor
      ),
      child:  Column(
        children: [
          
          const Text("الهدف", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 32
          ),),
    
          const SizedBox(
                height: 15,
              ),
    
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(iconData: Icons.add, currentColor: currentColor,),
    
              const SizedBox(
                width: 15,
              ),
    
              const Text("33", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 24
              ),),
    
              const SizedBox(
                width: 15,
              ),
    
              CustomIcon(iconData: Icons.remove, currentColor: currentColor,),
            ],
          ),
    
          const SizedBox(
                height: 20,
              ),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(score: "1000+", currentColor: currentColor,),
              CustomButton(score: "100+", currentColor: currentColor,),
              CustomButton(score: "100", currentColor: currentColor,),
              CustomButton(score: "33", currentColor: currentColor,),
              CustomButton(score: "0", currentColor: currentColor,),
            ],
          )
        ],
      ),
    );
  }
}


