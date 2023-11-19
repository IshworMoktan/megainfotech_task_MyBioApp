import 'package:flutter/material.dart';

import 'package:mybio/pages/welcomepage/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
            useMaterial3: true,
            fontFamily: 'Raleway'),
        home: WelcomeScreen());
  }
}
