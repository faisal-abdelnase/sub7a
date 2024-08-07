import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/count_page_body.dart';
import 'package:sub7a/core/utils/colors.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  Color curentColor = red;
  @override

  void initState() {
    // TODO: implement initState
    super.initState();

    getColorData();
  }

/// get Color data from local storage

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
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: curentColor,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.color_lens,
                  color: Colors.white,
                )),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                backgroundColor: curentColor,
                onPressed: () {
                  BlocProvider.of<StoreCountCubit>(context).totalCounter = 0;
                  BlocProvider.of<StoreCountCubit>(context).numberOfCounter = 0;
                  BlocProvider.of<StoreCountCubit>(context).count = 0;
                  setState(() {
                    
                  });
                },
                child: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: const CountPageBody(),
        );
      },
    );
  }
}
