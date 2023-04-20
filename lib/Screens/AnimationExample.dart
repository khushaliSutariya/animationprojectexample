import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
class AnimationExample extends StatefulWidget {
  const AnimationExample({Key? key}) : super(key: key);

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {

  bool isanimate=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isanimate=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SecondScrreens")),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomIn(child: Container(
          width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                color: Colors.red.shade300
            ),
            child: Text("Animation"),
          ), animate: isanimate,duration: Duration(seconds: 5),),

            ElevatedButton(
                onPressed: () {

                }, child: Text("Second Screens"))
          ]),
    );
  }
}
