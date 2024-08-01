import 'package:flutter/material.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_icon.dart';
import 'package:sub7a/core/utils/colors.dart';

class CountPageBody extends StatelessWidget {
  const CountPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        color: red
      ),
      child: const  Column(
        children: [
          
          Text("الهدف", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 32
          ),),

          Row(
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
          )
        ],
      ),
    );
  }
}

