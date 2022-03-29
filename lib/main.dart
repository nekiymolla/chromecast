import 'package:flutter/material.dart';
import 'package:chromecast/Pages/HomePage.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      title: 'chromecast menu',
      home: const ChoicePage(),
    );
  }
}
