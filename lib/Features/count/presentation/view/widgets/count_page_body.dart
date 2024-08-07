import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';
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
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    getColorData();
  }


  void getColorData() async {
  int color = await BlocProvider.of<StoreCountCubit>(context).getColorData();
  setState(() {
    curentColor = Color(color);
  });
}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreCountCubit, StoreCountState>(
      builder: (context, state) {
        return Column(
          children: [
            Column(
              children: [
                ContanerForScore(
                  currentColor: curentColor,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "الاستغفار",
                  style: TextStyle(color: curentColor, fontSize: 32),
                ),
                CustomCircularPercentIndicator(
                  onPressed: () {
                    count = BlocProvider.of<StoreCountCubit>(context).count;
                    int score = BlocProvider.of<StoreCountCubit>(context).score;

                    if (count < score) {
                      count++;
                      setState(() {
                        BlocProvider.of<StoreCountCubit>(context).count = count;
                        ++BlocProvider.of<StoreCountCubit>(context)
                            .totalCounter;
                      });
                    } else {
                      count = 0;
                      BlocProvider.of<StoreCountCubit>(context).count = count;

                      setState(() {
                        if (BlocProvider.of<StoreCountCubit>(context).score ==
                            0) {
                          BlocProvider.of<StoreCountCubit>(context)
                              .numberOfCounter;
                        } else {
                          BlocProvider.of<StoreCountCubit>(context)
                              .numberOfCounter++;
                        }
                      });
                    }
                  },
                  count: count,
                  currentColor: curentColor,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "مرات التكرار : ${BlocProvider.of<StoreCountCubit>(context).numberOfCounter}",
                  style: TextStyle(color: curentColor, fontSize: 24),
                ),
                Text(
                  "المجموع : ${BlocProvider.of<StoreCountCubit>(context).totalCounter}",
                  style: TextStyle(color: curentColor, fontSize: 24),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Radio(
                    fillColor: WidgetStateColor.resolveWith((states) => red),
                    value: red,
                    groupValue: curentColor,
                    onChanged: (value) {
                      curentColor = value!;
                      setState(() {
                        BlocProvider.of<StoreCountCubit>(context).saveColorData(curentColor.value);
                      });
                    }),


                Radio(
                    fillColor: WidgetStateColor.resolveWith((states) => black),
                    value: black,
                    groupValue: curentColor,
                    onChanged: (value) {
                      curentColor = value!;

                      setState(() {
                        BlocProvider.of<StoreCountCubit>(context).saveColorData(curentColor.value);
                      });
                    }),
                Radio(
                    fillColor: WidgetStateColor.resolveWith((states) => move),
                    value: move,
                    groupValue: curentColor,
                    onChanged: (value) {
                      curentColor = value!;

                      setState(() {
                        BlocProvider.of<StoreCountCubit>(context).saveColorData(curentColor.value);
                      });
                    }),
              ],
            )
          ],
        );
      },
    );
  }
}
