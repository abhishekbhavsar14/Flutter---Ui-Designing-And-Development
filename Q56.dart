import 'package:flutter/material.dart';

void main() {
  runApp(FourImagesApp());
}

class FourImagesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FourImagesScreen(),
    );
  }
}

class FourImagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Four Images Around Text")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Network.Image("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600", width: 50, height: 50),
                Text("Surrounded Text"),
                Network.Image("https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&w=600", width: 50, height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Network.Image("https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&w=600", width: 50, height: 50),
                SizedBox(width: 100), 
                Network.Image("https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&w=600", width: 50, height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
