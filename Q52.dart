import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _operation = "Add";
  String _result = "";

  void _calculate() {
    int num1 = int.parse(_num1Controller.text);
    int num2 = int.parse(_num2Controller.text);
    setState(() {
      switch (_operation) {
        case "Add":
          _result = "${num1 + num2}";
          break;
        case "Subtract":
          _result = "${num1 - num2}";
          break;
        case "Multiply":
          _result = "${num1 * num2}";
          break;
        case "Divide":
          _result = num2 != 0 ? "${num1 / num2}" : "Cannot divide by zero";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _num1Controller, decoration: InputDecoration(labelText: "Number 1")),
            TextField(controller: _num2Controller, decoration: InputDecoration(labelText: "Number 2")),
            Row(
              children: ["Add", "Subtract", "Multiply", "Divide"].map((op) {
                return Expanded(
                  child: RadioListTile(
                    title: Text(op),
                    value: op,
                    groupValue: _operation,
                    onChanged: (value) {
                      setState(() {
                        _operation = value!;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
            ElevatedButton(onPressed: _calculate, child: Text("Calculate")),
            Text("Result: $_result"),
          ],
        ),
      ),
    );
  }
}
