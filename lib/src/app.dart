import 'package:flutter/material.dart';
import 'package:vava/src/screens/home/home_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
