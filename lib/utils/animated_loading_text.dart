import 'package:flutter/material.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 5),
        builder: (context, value, child) => Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.blue,
              value: value,
            ),
            const SizedBox(
              height: 20 / 2,
            ),
            // Text(
            //   '${(value * 100).toInt()}%',
            //   style: const TextStyle(
            //     color: Colors.black,
            //     fontWeight: FontWeight.bold,
            //   ),
            // )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
