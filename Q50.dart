import 'package:flutter/material.dart';

void main() {
  runApp(ReverseNumberApp());
}

class ReverseNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReverseNumberScreen(),
    );
  }
}

class ReverseNumberScreen extends StatefulWidget {
  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<ReverseNumberScreen> {
  final TextEditingController _numberController = TextEditingController();
  String _reversedNumber = "";

  void _reverseNumber() {
    String input = _numberController.text;
    setState(() {
      _reversedNumber = input.split('').reversed.join();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reverse Number")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Enter a number"),
            ),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: Text("Reverse"),
            ),
            Text("Reversed Number: $_reversedNumber"),
          ],
        ),
      ),
    );
  }
}
