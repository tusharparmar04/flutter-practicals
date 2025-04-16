// import 'package:flutter/material.dart'; void main() {
//   runApp(MaterialApp( debugShowCheckedModeBanner: false, home: Scaffold(
//     appBar: AppBar(
//       title: Text("Practical 4"),
//     ),
//     body: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max,
//       textDirection: TextDirection.ltr,
//       children : [Text('Dishant',style:TextStyle(color:Colors.red,fontWeight:FontWeight.bold, fontSize: 25.0),),
//         Text('Amitbhai',style:TextStyle(color:Colors.green,fontWeight: FontWeight.bold, fontSize: 25.0),),
//         Text('Upadhyay',style:TextStyle(color:Colors.blue,fontWeight:	FontWeight.bold, fontSize: 25.0),),
//       ],
//     ),
//   ),
//   ));
// }
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Practical_4"),
      ),
      body: RichText(
          text: const TextSpan(
              text: 'Virat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontSize: 25,
              ),
              children: [
            TextSpan(
              text: 'Kohli',
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
              ),
            ),
          ])),
    ),
  ));
}
