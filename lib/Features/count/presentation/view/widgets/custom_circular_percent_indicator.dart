import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';



class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key, required this.currentColor, required this.onPressed, required this.count,
  });

  final Color currentColor;
  final void Function() onPressed;
  final int count;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80,
      percent: count / BlocProvider.of<StoreCountCubit>(context).score,
      lineWidth: 8,
      progressColor: currentColor,
      backgroundColor: currentColor.withOpacity(0.2),
      center: IconButton(
        onPressed: onPressed,
          icon:  Icon(Icons.touch_app,
          size: 64,
          color:currentColor,)
    ),
            
    header: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(count.toString(), 
              style: TextStyle(
      color: currentColor,
      fontSize: 24
              ),),
    ),
            
            
    );
  }
}


