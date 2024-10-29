import 'package:flutter/material.dart';

void main() {
  runApp(ColorSeekBarApp());
}

class ColorSeekBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorSeekBarScreen(),
    );
  }
}

class ColorSeekBarScreen extends StatefulWidget {
  @override
  _ColorSeekBarScreenState createState() => _ColorSeekBarScreenState();
}

class _ColorSeekBarScreenState extends State<ColorSeekBarScreen> {
  double _red = 0, _green = 0, _blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Seek Bar Color Adjuster")),
      body: Container(
        color: Color.fromRGBO(_red.toInt(), _green.toInt(), _blue.toInt(), 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _red,
              max: 255,
              label: "Red",
              onChanged: (value) {
                setState(() {
                  _red = value;
                });
              },
            ),
            Slider(
              value: _green,
              max: 255,
              label: "Green",
              onChanged: (value) {
                setState(() {
                  _green = value;
                });
              },
            ),
            Slider(
              value: _blue,
              max: 255,
              label: "Blue",
              onChanged: (value) {
                setState(() {
                  _blue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
