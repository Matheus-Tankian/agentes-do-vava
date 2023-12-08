import 'package:flutter/material.dart';
import 'package:vava/src/app.dart';
import 'package:vava/src/core/app_thema.dart';

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
      theme: Themas().customTheme,
      home: const App(),
    );
  }
}
