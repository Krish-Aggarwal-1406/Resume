import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bio-data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
        ),
        body: Container(
          color: Colors.lightBlue.shade100,
          child: Center(
            child: SingleChildScrollView(
              child: Biodata(),
            ),
          ),
        ),
      ),
    );
  }
}

class Biodata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.IzsO4zn8y8XPV_UdCcAXIAHaE8?w=254&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
        ),
        SizedBox(height: 40),
        Text(
          'Krish Aggarwal',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          'GDG Volunteer\nMMDU Student',
          style: TextStyle(fontSize: 22, color: Colors.grey),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            'Skills\n1. Learning Flutter\n2. Learning Dart\n3. Learning C\n4. Learning HTML and CSS\n',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'This is my contact info:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Email: krishaggarwal1406@gmail.com',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Phone: +91 8053645063 ',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
