import 'package:flutter/material.dart';

class GesturesScreen extends StatefulWidget {
  const GesturesScreen({super.key});

  @override
  State<GesturesScreen> createState() => _GesturesScreenState();
}

class _GesturesScreenState extends State<GesturesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // uncomment every property and see what it does
            GestureDetector(
              // onTap: () {
              //   print("onTap");
              // },
              // onDoubleTap: () {
              //   print('onDoubleTap');
              // },
              // onLongPress: () {
              //   print('onLongPress');
              // },
              // onTapDown: (details) {
              //   print('onTapDown');
              // },
              // onTapUp: (details) {
              //   print('onTapUp');
              // },
              // onTapCancel: () {
              //   print('onTapCancel');
              // },
              // onVerticalDragStart: (details) {
              //   print(details);
              //   print('onVerticalDragStart');
              // },
              // onVerticalDragCancel: () {
              //   print('onVerticalDragCancel');
              // },
              // onVerticalDragDown: (details) {
              //   print('onVerticalDragDown');
              // },
              // onVerticalDragEnd: (details) {
              //   print("onVerticalDragEnd");
              // },
              // onPanStart: (details) {
              //   print(details);
              // },
              // onPanEnd: (details) {
              //   print(details);
              // },
              // onPanUpdate: (details) {
              //   print(details);
              // },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 200,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
