import 'package:action_slider/action_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mybio/pages/home.dart';
import 'package:mybio/utils/animated_loading_text.dart';
import 'package:animated_background/animated_background.dart';

class WelcomeSlide2 extends StatefulWidget {
  @override
  State<WelcomeSlide2> createState() => _WelcomeSlide1State();
}

class _WelcomeSlide1State extends State<WelcomeSlide2>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            spawnMaxRadius: 50,
            spawnMinSpeed: 10.00,
            particleCount: 10,
            spawnMaxSpeed: 50,
            minOpacity: 0.3,
            spawnOpacity: 0.4,
            baseColor: Colors.lightBlueAccent,
          ),
        ),
        vsync: this,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    animatedTexts: [
                      TyperAnimatedText('Hope you will love my work \n ',
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              backgroundColor: Colors.lightGreenAccent)),
                    ],
                    onTap: () {},
                  ),
                ),
              ),
              Center(
                child: ActionSlider.standard(
                  sliderBehavior: SliderBehavior.stretch,
                  width: 300.0,
                  backgroundColor: Colors.white,
                  toggleColor: const Color.fromARGB(255, 89, 255, 252),
                  action: (controller) async {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text('Slide to see my protfolio'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
