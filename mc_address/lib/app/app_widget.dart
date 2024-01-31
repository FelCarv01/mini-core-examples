import 'package:flutter/material.dart';

import 'public/home_page.dart';

class Appwidget extends StatelessWidget {
  const Appwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 51, 93, 229)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
