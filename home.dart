import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'map.dart';
import 'profile.dart';



class Home extends StatelessWidget {
  final String title;

  Home({Key key, @required this.title}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('HOME'),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: null,
                    child: Icon(
                      Icons.map,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Map()),
                      );
                    },
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    child: Icon(
                      Icons.portrait,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                  ),
                ],
              )),
        ));
  }
}


