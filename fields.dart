import 'package:flutter/material.dart';
import 'home.dart';
import 'map.dart';
import 'login.dart';
import 'fancy_button.dart';

//import 'profile.dart';
//import 'fields.dart';

class Field1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Field 1'),
          ),
          floatingActionButton: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FancyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Map()),
                  );
                },
              ),
              FancyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
              FancyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
              //tooltip: 'Increment Counter',
              //child: Icon(Icons.add),
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
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
            ],
          )),
    );
  }
}

class Field2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Field 2'),
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

class Field3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Field 3'),
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

class Field4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Field 4'),
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


/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              children: <Widget>[
                SizedBox(height: 80.0),
          Column(
            children: <Widget>[
              Image.network(
          'extras.mnginteractive.com/live/media/site21/2015/0803/20150803__04DCSSOCw~1.jpg',
          ),
            SizedBox(height: 16.0),
            Text('SHRINE'),
            ],
        ),
        ],
      )
    )
    )
    );
  }
}
*/



/*
class Field {
  const Field({this.name, this.description, this.location, this.imageUrl});
  final String name;
  final String description;
  final String location;
  final String imageUrl;
}

final String server = defaultTargetPlatform == TargetPlatform.android ? "10.0.2.2" : "localhost";

final List<Field> _field = <Field>[
  Field(
      name: 'North Field',
      description: 'CU practice Soccer field.',
      location: 'This is the field on the North Side of campus.',
      imageUrl:
      'extras.mnginteractive.com/live/media/site21/2015/0803/20150803__04DCSSOCw~1.jpg'),
  Field(
      name: 'Tennis',
      description: 'CU practice Soccer field.',
      location: 'This is the tennis court on campus.',
      imageUrl: 'https://pbs.twimg.com/media/DYNAC9gVwAAaTuf.jpg'),
  Field(
      name: 'North Field',
      description: 'CU North Public field.',
      location: 'This is the Public field on the North Side of campus.',
      imageUrl:
      'extras.mnginteractive.com/live/media/site21/2015/0803/20150803__04DCSSOCw~1.jpg'),
  Field(
      name: 'Volleyball Court',
      description: 'CU practice Volleyball Court.',
      location: 'This is the field on the North Side of campus.',
      imageUrl:
      'https://scontent.fapa1-1.fna.fbcdn.net/v/t1.0-9/30739076_10155245406991666_1975803531617107968_n.jpg?_nc_cat=110&_nc_ht=scontent.fapa1-1.fna&oh=9449ab3d43ff7cc1e3c0480a632f2e6c&oe=5D0FAC76'),
];

*/