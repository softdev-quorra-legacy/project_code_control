import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pre_ extends StatefulWidget {
  @override
  _PreState createState() => _PreState();
}

class _PreState extends State<Pre_> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

    body:
        Container(
          child :ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            children: <Widget>[
              SizedBox(height: 180.0),
              Column(
                children: <Widget>[
                  Image.asset('assets/logoname2.png', height: 80.00, width: 100,), //Width can be > 100, depends on the .png file of new design
                  SizedBox(height: 80.0),
                ],
              ),
              SizedBox(height: 30.0),
//              new InkWell(
//                splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
//                onTap: () => Navigator.of(context).pushNamed('/'), //Actions when tapping the button
//                child: new Container(
//                  //width: 100.0,
//                  height: 45.0, //Button size
//                  decoration: new BoxDecoration(
//                    color: Colors.white,
//                    border: new Border.all(color: Colors.white),
//                    borderRadius: new BorderRadius.circular(35.0),
//                  ),
//                  child: new Center(child: new Text('Log in with different account', style: new TextStyle(fontSize: 16.0, color: Colors.orangeAccent),),),
//                ),
//              ),
              new InkWell(
                splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
                onTap: () => Navigator.of(context).pushNamed('/home'), //Actions when tapping the button
                child: new Container(
                  //width: 100.0,
                  height: 35.0, //Button size
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border.all(color: Colors.white),
                    borderRadius: new BorderRadius.circular(35.0),
                  ),
                  child: new Center(child: new Text('Log back in with this account', style: new TextStyle(fontSize: 16.0, color: Colors.orangeAccent),),),
                ),
              ),
              /*
              * Below this we we can make a list with user picture to let user log back in with
              * the same account of different account. If the user didn't upload a picture, use
              * default picture
              * */
              SizedBox(height: 20.0,),
              new Text(
                "__________Other Login Option__________",
                style: new TextStyle(fontSize: 16.0,
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 245.00,),
              new InkWell(
                splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
                onTap: () => Navigator.of(context).pushNamed('/'), //Actions when tapping the button
                child: new Container(
                  //width: 100.0,
                  height: 35.0, //Button size
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    border: new Border.all(color: Colors.white),
                    borderRadius: new BorderRadius.circular(0.0),
                  ),
                  child: new Center(child: new Text('CREATE NEW PICKUP ACCOUNT', style: new TextStyle(fontSize: 16.0, color: Colors.orangeAccent),),),
                ),
              )
            ],
          ),
      ),
      backgroundColor: Colors.orangeAccent,
    );
  }

}
