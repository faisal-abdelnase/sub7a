import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';


class CustomCircularPercentIndicator extends StatefulWidget {
  const CustomCircularPercentIndicator({
    super.key, required this.currentColor,
  });

  final Color currentColor;

  @override
  State<CustomCircularPercentIndicator> createState() => _CustomCircularPercentIndicatorState();
}

class _CustomCircularPercentIndicatorState extends State<CustomCircularPercentIndicator> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80,
      percent: .5,
      lineWidth: 8,
      progressColor: widget.currentColor,
      backgroundColor: widget.currentColor.withOpacity(0.2),
      center: IconButton(
        onPressed: () {
          count = BlocProvider.of<StoreCountCubit>(context).count;
          int score = BlocProvider.of<StoreCountCubit>(context).score;

          if(count < score){

            count++;
          setState(() {
            BlocProvider.of<StoreCountCubit>(context).count = count;
          });
          }

          else{
            count = score;
            setState(() {
              
            });
          }
          
        },
      icon:  Icon(Icons.touch_app,
      size: 64,
      color: widget.currentColor,)
    ),
            
    header: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(count.toString(), 
              style: TextStyle(
      color: widget.currentColor,
      fontSize: 24
              ),),
    ),
            
            
    );
  }
}


