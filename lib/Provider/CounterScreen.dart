import 'package:flutter/material.dart';
import 'package:food_app/Provider/Counter.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Text(counterProvider.counter.toString()),
          ElevatedButton(
            onPressed: () {
              counterProvider.increment();
            },
            child: Text("increment"),
          ),
          ElevatedButton(
            onPressed: () {
              counterProvider.decrement();
            },
            child: Text("decrement"),
          )
        ],
      ),
    ));
  }
}
