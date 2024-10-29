import 'package:flutter/material.dart';

void main() {
  runApp(ColorRadioApp());
}

class ColorRadioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorRadioScreen(),
    );
  }
}

class ColorRadioScreen extends StatefulWidget {
  @override
  _ColorRadioScreenState createState() => _ColorRadioScreenState();
}

class _ColorRadioScreenState extends State<ColorRadioScreen> {
  Color _bgColor = Colors.white;
  String _selectedColor = "White";

  void _changeColor(String color) {
    setState(() {
      _selectedColor = color;
      switch (color) {
        case "Red":
          _bgColor = Colors.red;
          break;
        case "Green":
          _bgColor = Colors.green;
          break;
        case "Blue":
          _bgColor = Colors.blue;
          break;
        default:
          _bgColor = Colors.white;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button Color Selector")),
      body: Container(
        color: _bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ["Red", "Green", "Blue"].map((color) {
            return RadioListTile<String>(
              title: Text(color),
              value: color,
              groupValue: _selectedColor,
              onChanged: _changeColor,
            );
          }).toList(),
        ),
      ),
    );
  }
}
