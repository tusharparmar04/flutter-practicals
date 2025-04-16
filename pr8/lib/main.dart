import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Contact List')),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Dishant Upadhyay'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Harshad Dalsaniya'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Tushar Parmar'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Ashishkumar Dabhi'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Mohitkumar Makavana'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Mansi Dhandha'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Shruti Kanani'),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.red),
              title: Text('Bhumi Sudani'),
            ),
          ],
        ),
      ),
    );
  }
}
