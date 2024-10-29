import 'package:flutter/material.dart';

class ArticalScreen extends StatelessWidget {
  const ArticalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/nature1.png',
            fit: BoxFit.fill,
            height: 300,
            width: double.infinity,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Green Tree pic along fountain',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mumbai,India',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Text(' 41')
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blueAccent,
                        size: 28,
                      ),
                      Icon(Icons.rocket_launch_rounded,
                          color: Colors.blueAccent, size: 28),
                      Icon(Icons.share, color: Colors.blueAccent, size: 28)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CALL',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      Text(
                        'ROUTE',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blueAccent),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                    'A serene landscape features a lush green tree standing tall beside a beautiful fountain. The tree\'s vibrant leaves provide a refreshing contrast to the shimmering water cascading from the fountain. The gentle sound of flowing water creates a peaceful ambiance, blending nature\'s beauty with the soothing rhythm of the fountain.')
              ],
            ),
          )
        ],
      ),
    );
  }
}
