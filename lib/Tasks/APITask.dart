import 'package:flutter/material.dart';
import '../API_Config/Service.dart';

class APITask extends StatefulWidget {
  const APITask({super.key});

  @override
  State<APITask> createState() => _APITaskState();
}

class _APITaskState extends State<APITask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: Service.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasError || snapshot.error != null) {
              return Text("Something went wrong...");
            }
            if (snapshot.hasData) {
              return ListView.builder(
                  itemBuilder: (context, index) =>
                      Text(snapshot.data![index]['name']),
                  itemCount: snapshot.data!.length);
            }
            return Text("Waiting...");
          },
        ),
      ),
    );
  }
}
