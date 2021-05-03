import 'dart:math';

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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void getRandomDiceFaces() {
    setState(() {
      //The setState checks the occurrence of the changed part in further part of the code, changes it to the new value and redraws or recalls the build method.
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

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
            // ignore: deprecated_member_use
            child: FlatButton(
              // FlatButton widget comes already with padding therefore there is no need of adding extra padding.
              onPressed: () {
                getRandomDiceFaces();
              }, // This is known as void callback. It is similar to anonymous functions in other programming language
              child: Image.asset('images/dice$leftDiceNumber.png'),
              // Using the variable inside the Image.asset() widget with the help of dollar($) sign is known as String Interpolation.
            ),
          ),
          // SizedBox(
          //   width: 16.0,
          // ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              // FlatButton widget comes already with padding therefore there is no need of adding extra padding.
              onPressed: () {
                getRandomDiceFaces();
                // print('Right button is pressed.');
              },
              child: Image.asset(
                  'images/dice$rightDiceNumber.png'), // Using the variable inside the Image.asset() widget with the help of dollar($) sign is known as String Interpolation.
            ),
          ),
        ],
      ),
    );
  }
}

// When we want to build a non-responsive User Interface then a StatelessWidget is used or extended in a class.
// But when we want to add some functionality to our UI then a StatefulWidget is used.

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             // Expanded widget rearranges it child to occupy as much space as possible on the screen.
//             //  child: Image(
//             //   image: AssetImage('images/dice1.png'),
//             // ),
//
//             // Alternative & more appropriate way is as follows -->
//             // ignore: deprecated_member_use
//             child: FlatButton(
//               // FlatButton widget comes already with padding therefore there is no need of adding extra padding.
//               onPressed: () {
//                 print('Left button is pressed');
//               }, // This is known as void callback. It is similar to anonymous functions in other programming language
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//           // SizedBox(
//           //   width: 16.0,
//           // ),
//           Expanded(
//             // ignore: deprecated_member_use
//             child: FlatButton(
//                 // FlatButton widget comes already with padding therefore there is no need of adding extra padding.
//                 onPressed: () {
//                   print('Right button is pressed.');
//                 },
//                 child: Image.asset('images/dice1.png')),
//           ),
//         ],
//       ),
//     );
//   }
// }
