import 'package:flutter/material.dart';

void main() {
  runApp(CheckboxTextApp());
}

class CheckboxTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxTextScreen(),
    );
  }
}

class CheckboxTextScreen extends StatefulWidget {
  @override
  _CheckboxTextScreenState createState() => _CheckboxTextScreenState();
}

class _CheckboxTextScreenState extends State<CheckboxTextScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Text Display")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            if (_isChecked) Text("Checkbox is checked!"),
          ],
        ),
      ),
    );
  }
}
