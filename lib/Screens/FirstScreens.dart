import 'package:animationprojectexample/Screens/SecondScreens.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class FirstScreens extends StatefulWidget {
  const FirstScreens({super.key});

  @override
  State<FirstScreens> createState() => _FirstScreensState();
}

class _FirstScreensState extends State<FirstScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FirstScrreens")),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: SecondScreens()));

                  },
                  child: Text("First Screens")),
            )
          ]),
    );
  }
}
