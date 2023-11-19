import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mybio/utils/animated_loading_text.dart';
import 'package:animated_background/animated_background.dart';

class WelcomeSlide1 extends StatefulWidget {
  @override
  State<WelcomeSlide1> createState() => _WelcomeSlide1State();
}

class _WelcomeSlide1State extends State<WelcomeSlide1>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            spawnMaxRadius: 50,
            spawnMinSpeed: 5.00,
            particleCount: 20,
            spawnMaxSpeed: 50,
            minOpacity: 0.3,
            spawnOpacity: 0.4,
            baseColor: Colors.blue,
          ),
        ),
        vsync: this,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    animatedTexts: [
                      TyperAnimatedText(
                          'Welcome to My Portfolio App,\n \n \n Hello, My name is Ishwor.\n I am flutter developer',
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              backgroundColor: Colors.lightGreenAccent)),
                    ],
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
