import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.lightGreen[600],
        elevation: 2,
        title: const Text("오늘의 웹툰",
            style: TextStyle(
              fontFamily: 'KopubWorld_Dotum',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
