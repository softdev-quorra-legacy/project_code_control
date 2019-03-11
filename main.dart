//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'map.dart';
import 'profile.dart';
import 'fields.dart';
import 'login.dart';


void main() {
  runApp(PickUp());
}


class PickUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'P!ckUp';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.deepOrange,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/map': (context) => Map(),
        '/profile': (context) => Profile(),
        '/field1': (context) => Field1(),
        '/field2': (context) => Field2(),
        '/field3': (context) => Field3(),
        '/field4': (context) => Field4(),
      },
    );
  }
}
