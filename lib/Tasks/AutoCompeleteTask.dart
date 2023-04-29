import 'package:flutter/material.dart';

class AutoCompeleteTask extends StatefulWidget {
  const AutoCompeleteTask({super.key});

  @override
  State<AutoCompeleteTask> createState() => _AutoCompeleteTaskState();
}

class _AutoCompeleteTaskState extends State<AutoCompeleteTask> {
  @override
  Widget build(BuildContext context) {
    List<String> names = ["omar", "hosny", "zz"];
    return Scaffold(
      body: Center(
        child: Autocomplete<String>(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return [];
            }
            return names
                .where((element) => element.contains(textEditingValue.text));
          },
        ),
      ),
    );
  }
}
