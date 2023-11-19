import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget custom_textbutton(context, IconData icon) {
  return TextButton(
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
  );
}
