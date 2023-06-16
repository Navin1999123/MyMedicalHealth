import 'package:flutter/material.dart';
import 'package:medicalhealth/screens/bottem_bar.dart';
import 'package:medicalhealth/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Medical Health App',
      home: BottemNavigationBar(),
    );
  }
}
