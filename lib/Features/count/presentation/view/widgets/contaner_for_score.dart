import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_button.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/custom_icon.dart';


class ContanerForScore extends StatefulWidget {
  const ContanerForScore({
    super.key, required this.currentColor,
  });

  final Color currentColor;

  @override
  State<ContanerForScore> createState() => _ContanerForScoreState();
}

class _ContanerForScoreState extends State<ContanerForScore> {

  int score = 33;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        color: widget.currentColor
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
              CustomIcon(
                iconData: Icons.add_circle, 
                onPressed: () {
                  score++;
                  
                  setState(() {
                    BlocProvider.of<StoreCountCubit>(context).score = score;
                    BlocProvider.of<StoreCountCubit>(context).count = 0;
                  });
                },
                ),
    
              const SizedBox(
                width: 15,
              ),
    
              Text(score.toString(), 
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24
              ),),
    
              const SizedBox(
                width: 15,
              ),
    
              CustomIcon(
                iconData: Icons.remove_circle,
                onPressed: () {
                  score--;
                  setState(() {
                    BlocProvider.of<StoreCountCubit>(context).score = score;
                    BlocProvider.of<StoreCountCubit>(context).count = 0;
                  });
                },),
            ],
          ),
    
          const SizedBox(
                height: 20,
              ),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(score: "1000", currentColor: widget.currentColor,),
              CustomButton(score: "500", currentColor: widget.currentColor,),
              CustomButton(score: "100", currentColor: widget.currentColor,),
              CustomButton(score: "33", currentColor: widget.currentColor,),
              CustomButton(score: "0", currentColor: widget.currentColor,),
            ],
          )
        ],
      ),
    );
  }
}


