import 'package:flutter/material.dart';

void main() {
  runApp(ChangeBackgroundApp());
}

class ChangeBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BackgroundScreen(),
    );
  }
}

class BackgroundScreen extends StatefulWidget {
  @override
  _BackgroundScreenState createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  Color _bgColor = Colors.white;

  void _changeColor() {
    setState(() {
      _bgColor = _bgColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Background")),
      body: Container(
        color: _bgColor,
        child: Center(
          child: ElevatedButton(
            onPressed: _changeColor,
            child: Text("Change Background Color"),
          ),
        ),
      ),
    );
  }
}
