import 'package:flutter/material.dart';
import 'package:flutter_profile/Pages/About.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Profile',
      initialRoute: 'about',
      routes: {
        'about' : (_) => const Profile(),
      },
    );
  }
}