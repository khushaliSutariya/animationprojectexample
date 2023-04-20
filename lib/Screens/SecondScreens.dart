import 'package:flutter/material.dart';

class SecondScreens extends StatefulWidget {
  const SecondScreens({super.key});

  @override
  State<SecondScreens> createState() => _SecondScreensState();
}

class _SecondScreensState extends State<SecondScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SecondScrreens")),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Second Screens")))
          ]),
    );
  }
}
