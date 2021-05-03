import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // Expanded widget rearranges it child to occupy as much space as possible on the screen.
            //  child: Image(
            //   image: AssetImage('images/dice1.png'),
            // ),

            // Alternative & more appropriate way is as follows -->
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
          // SizedBox(
          //   width: 16.0,
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
