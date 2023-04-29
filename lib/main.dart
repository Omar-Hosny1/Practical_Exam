import 'package:flutter/material.dart';
import 'package:food_app/Provider/Counter.dart';
import 'package:provider/provider.dart';
import 'Tasks/AutoCompeleteTask.dart';
import 'Tasks/FormTask.dart';
import 'Tasks/AnimationTask.dart';
import 'Tasks/APITask.dart';
import 'Gestures/GesturesScrees.dart';
import 'Provider/CounterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimationTask(),
        routes: {
          PreviewExtractedData.routeName: (context) => PreviewExtractedData()
        },
      ),
    );
  }
}
