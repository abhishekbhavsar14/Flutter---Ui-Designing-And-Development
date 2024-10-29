import 'package:flutter/material.dart';

void main() {
  runApp(FontSizeApp());
}

class FontSizeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FontSizeScreen(),
    );
  }
}

class FontSizeScreen extends StatefulWidget {
  @override
  _FontSizeScreenState createState() => _FontSizeScreenState();
}

class _FontSizeScreenState extends State<FontSizeScreen> {
  double _fontSize = 16.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      _fontSize -= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Font Size Control")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Adjustable Font Size", style: TextStyle(fontSize: _fontSize)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: Icon(Icons.add), onPressed: _increaseFontSize),
                IconButton(icon: Icon(Icons.remove), onPressed: _decreaseFontSize),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
