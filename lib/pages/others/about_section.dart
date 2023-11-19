import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';
import 'package:mybio/utils/animated_loading_text.dart';
import 'package:mybio/utils/glowingbutton.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          Row(
            children: [
              Text(
                'Ishwor Tamang',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.verified_rounded,
                color: Colors.blue,
              ),
              Icon(
                Icons.android,
                color: Colors.green,
              ),
              Icon(Icons.apple),
              Icon(Icons.logo_dev),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.0),
          SizedBox(height: 8.0),
          Text(
            'Software Development with 9 months of hands-on experience building hybrid applications for organization. Knowledgeable in identifying core technical problems, finding better solutions to existing problems, and maintaining development. Capable of visualizing goals, prioritizing them based on general importance, and conquering them together with the team.',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
