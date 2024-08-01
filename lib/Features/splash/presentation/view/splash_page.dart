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


    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeIn);

    _controller?.forward();

    _playSound();


    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage ()),
      );
    });
  }


  void _playSound() async {
    await _audioPlayer.play(AssetSource('assets/sound.mp3'));
  }


  @override
  void dispose() {
    _controller?.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB1001C),
      body: Center(
        child: FadeTransition(
          opacity: _animation!,
          child: const Column(
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
      ),
    );
  }
}