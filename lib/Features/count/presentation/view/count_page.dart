import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';
import 'package:sub7a/Features/count/presentation/view/widgets/count_page_body.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreCountCubit(),
      child: BlocBuilder<StoreCountCubit, StoreCountState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: BlocProvider.of<StoreCountCubit>(context).currentColor,
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
                  backgroundColor:
                      BlocProvider.of<StoreCountCubit>(context).currentColor,
                  onPressed: () {},
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
      ),
    );
  }
}
