import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Profile',
      initialRoute: 'about',
      routes: {
        'about' : (_) => AboutMePage(),
      },
    );
  }
}