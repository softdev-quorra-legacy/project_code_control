import 'package:flutter/material.dart';
import 'home.dart';
import 'map.dart';

class GITTESTING extends statelessWidget
{
  this is a fake class to test pushing to my local repository
  TEST
}
ANOTHER EDIT


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
          ),
          floatingActionButton: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
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
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
            ],
          )),
    );
  }
}


