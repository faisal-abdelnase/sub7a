import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sub7a/Features/sub7a/presentation/view/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {

  AnimationController? _controller;
  Animation<double>? _animation;
  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage ()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffB1001C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('asset/image/sub7ati.jpg')),

              SizedBox(
                height: 20,
              ),

            Text("سبحان الله العظيم", 
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue
            ),),
            Text("سبحان الله و بحمده", 
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue
            ),),
          ],
        ),
      ),
    );
  }
}