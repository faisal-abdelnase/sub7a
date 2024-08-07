import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.score,
    required this.currentColor,
  });

  final String score;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreCountCubit, StoreCountState>(
      builder: (context, state) {
        return ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(10, 40)),
            onPressed: () {
              if(int.parse(score) == 0){
                BlocProvider.of<StoreCountCubit>(context).score = 33;
                BlocProvider.of<StoreCountCubit>(context).count = 0;
              }
              else{
                BlocProvider.of<StoreCountCubit>(context).score = int.parse(score);
              BlocProvider.of<StoreCountCubit>(context).count = 0;
              }
            },
            child: Text(
              score,
              style: TextStyle(color: currentColor),
            ));
      },
    );
  }
}
