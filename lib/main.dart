import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sub7a/Features/count/presentation/manager/cubit/store_count_cubit.dart';
import 'package:sub7a/Features/splash/presentation/view/splash_page.dart';

void main() {
  runApp(const sub7a());
}

// ignore: camel_case_types
class sub7a extends StatelessWidget {
  const sub7a({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreCountCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
