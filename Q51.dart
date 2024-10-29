import 'package:flutter/material.dart';

void main() {
  runApp(NumberRangeApp());
}

class NumberRangeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumberInputScreen(),
    );
  }
}

class NumberInputScreen extends StatelessWidget {
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _endController = TextEditingController();

  void _navigateToRangeScreen(BuildContext context) {
    int start = int.parse(_startController.text);
    int end = int.parse(_endController.text);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NumberRangeScreen(start: start, end: end)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Number Range")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _startController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Start number"),
            ),
            TextField(
              controller: _endController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "End number"),
            ),
            ElevatedButton(
              onPressed: () => _navigateToRangeScreen(context),
              child: Text("Show Range"),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberRangeScreen extends StatelessWidget {
  final int start;
  final int end;

  NumberRangeScreen({required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    List<int> range = [for (var i = start + 1; i < end; i++) i];
    return Scaffold(
      appBar: AppBar(title: Text("Numbers in Range")),
      body: Center(
        child: Text("Numbers: ${range.join(", ")}"),
      ),
    );
  }
}
