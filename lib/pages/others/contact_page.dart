import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/scheduler.dart';
import 'package:http/http.dart';
import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void downloadFile() async {
      var time = DateTime.now().millisecondsSinceEpoch;
      var path = "/storage/emulated/0/Download/ishworCV2023-$time.pdf";
      var file = File(path);
      var res =
          await get(Uri.parse("https://drive.google.com/drive/u/0/my-drive"));
      file.writeAsBytes(res.bodyBytes);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Contact',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          TextButton(
            onPressed: () async {
              String email = Uri.encodeComponent('ishwortamang980@gmail.com');
              String subject = Uri.encodeComponent("Hello Flutter");
              String body = Uri.encodeComponent("Hi! I'm Flutter Developer");

              Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
              if (await launchUrl(mail)) {
                //email app opened
              } else {}
            },
            child: const Row(
              children: [
                Icon(Icons.email),
                Text(
                  " ishwortamang980@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () async {
              Uri phoneno = Uri.parse('tel: +977-9862792749,');
              if (await launchUrl(phoneno)) {
                //dialer opened
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Dailer can' 't be launched.'),
                  ),
                );
              }
            },
            child: const Row(
              children: [
                Icon(Icons.phone_android_outlined),
                Text(
                  ' +977-9862792749',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            child: const Row(
              children: [
                Icon(Icons.link_rounded),
                Text(
                  ' ishwormoktan.com',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            onPressed: () async {
              String url = 'https://ishwormoktan.github.io/Newportfolio/';
              var urllaunchable = await canLaunchUrlString(url);
              if (urllaunchable) {
                await launchUrlString(url);
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Url can' 't be launched.'),
                  ),
                );
              }
            },
          ),
          TextButton(
            child: const Row(
              children: [
                Icon(FontAwesomeIcons.github),
                Text(
                  ' github/ishwormoktan',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            onPressed: () async {
              String url = 'https://github.com/IshworMoktan';
              var urllaunchable = await canLaunchUrlString(url);
              if (urllaunchable) {
                await launchUrlString(url);
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Url can' 't be launched.'),
                  ),
                );
              }
            },
          ),
          TextButton(
            child: const Row(
              children: [
                Icon(FontAwesomeIcons.linkedin),
                Text(
                  ' linkedIn/ishwormoktan',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            onPressed: () async {
              String url =
                  'https://www.linkedin.com/in/ishwor-moktan-a6922019b/';
              var urllaunchable = await canLaunchUrlString(url);
              if (urllaunchable) {
                await launchUrlString(url);
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Url can' 't be launched.'),
                  ),
                );
              }
            },
          ),
          const SizedBox(height: 30.0),
          const Center(child: Text('Thank You')),
          const Center(
              child: Text('Does your requirement matches my skills ? \n ')),
          const SizedBox(height: 30.0),
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  downloadFile();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('CV has been downloaded to Download Folder.'),
                    ),
                  );
                  Future.delayed(const Duration(milliseconds: 1500), () async {
                    String url = 'https://drive.google.com/drive/u/0/my-drive';
                    var urllaunchable = await canLaunchUrlString(url);
                    if (urllaunchable) {
                      await launchUrlString(url);
                    } else {
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Url can' 't be launched.'),
                        ),
                      );
                    }
                  });
                },
                child: const Text('Download CV')),
          ),
          const SizedBox(height: 30.0),
          Center(
            child: ActionSlider.standard(
              sliderBehavior: SliderBehavior.stretch,
              width: 300.0,
              backgroundColor: Colors.white,
              toggleColor: Colors.lightGreenAccent,
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 2));
                controller.success(); //starts success animation
                await Future.delayed(const Duration(seconds: 1));

                String email = Uri.encodeComponent('ishwortamang980@gmail.com');
                String subject = Uri.encodeComponent("Hello Flutter");
                String body = Uri.encodeComponent(
                    "Hi! We want to have meeting regarding job.");

                Uri mail =
                    Uri.parse("mailto:$email?subject=$subject&body=$body");
                if (await launchUrl(mail)) {
                  //email app opened
                } else {}

                controller.reset(); //resets the slider
              },
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: [
                  FadeAnimatedText('Love my work !'),
                  FadeAnimatedText('Slide it !!'),
                  FadeAnimatedText('Slide it to hire Now!!!'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
