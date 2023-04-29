import 'package:flutter/material.dart';

class AnimationTask extends StatefulWidget {
  const AnimationTask({super.key});

  @override
  State<AnimationTask> createState() => _AnimationTaskState();
}

class _AnimationTaskState extends State<AnimationTask> {
  bool _isTallerThan200PX = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isTallerThan200PX = !_isTallerThan200PX;
                  });
                },
                child: Text("Submit"),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: _isTallerThan200PX ? 500 : 200,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
