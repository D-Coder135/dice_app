import 'package:flutter/material.dart';
import 'dart:math';

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
                setState(() {
                  //The setState checks the occurrence of the changed part in further part of the code, changes it to the new value and redraws or recalls the build method.
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              }, // This is known as void callback. It is similar to anonymous functions in other programming language
              child: Image.asset('images/dice$leftDiceNumber.png'),
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
                  print('Right button is pressed.');
                },
                child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
}

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
