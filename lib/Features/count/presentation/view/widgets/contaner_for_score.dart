import 'package:flutter/material.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_button.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_icon.dart';
import 'package:sub7a/core/utils/colors.dart';

class ContanerForScore extends StatelessWidget {
  const ContanerForScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        color: red
      ),
      child: const Column(
        children: [
          
          Text("الهدف", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 32
          ),),
    
          SizedBox(
                height: 15,
              ),
    
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(iconData: Icons.add,),
    
              SizedBox(
                width: 15,
              ),
    
              Text("33", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 24
              ),),
    
              SizedBox(
                width: 15,
              ),
    
              CustomIcon(iconData: Icons.remove,),
            ],
          ),
    
          SizedBox(
                height: 20,
              ),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(score: "1000+",),
              CustomButton(score: "100+",),
              CustomButton(score: "100",),
              CustomButton(score: "33",),
              CustomButton(score: "0",),
            ],
          )
        ],
      ),
    );
  }
}


