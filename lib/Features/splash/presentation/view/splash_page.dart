import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sub7a/Features/sub7a/presentation/view/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage ()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("سبحان الله العظيم"),
            Text("سبحان الله و بحمده"),
          ],
        ),),
    );
  }
}