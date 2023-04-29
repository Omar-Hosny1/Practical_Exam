import 'package:flutter/material.dart';

class FormTask extends StatefulWidget {
  const FormTask({super.key});

  @override
  State<FormTask> createState() => _FormTaskState();
}

class _FormTaskState extends State<FormTask> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  String _enteredUserName = "";
  String _enteredPasswrod = "";

  _save() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();

    // The Controller way
    print(_controller.text);

    Navigator.of(context)
        .pushNamed(PreviewExtractedData.routeName, arguments: _enteredUserName);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (value) {
                    _enteredUserName = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a value';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text("Username"),
                  ),
                ),
                TextFormField(
                  onSaved: (value) {
                    _enteredPasswrod = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a value';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text("Password"),
                  ),
                ),
                TextField(
                  controller: _controller,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _save,
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PreviewExtractedData extends StatelessWidget {
  const PreviewExtractedData({super.key});
  static const routeName = "/preview";

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Center(
        child: Text(username),
      ),
    );
  }
}
