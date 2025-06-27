import 'package:flutter/material.dart';
import 'sin_in_screen.dart';
import 'dart:async';

class Splachscreen extends StatefulWidget {
  const Splachscreen({super.key});

  @override
  State<Splachscreen> createState() => _SplachscreenState();
}

class _SplachscreenState extends State<Splachscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SinInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(247, 216, 19, 19),
      body: Center(child: Image.asset('lib/assets/splashScreen.png')),
    );
  }
}
