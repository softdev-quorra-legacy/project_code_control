import 'package:flutter/material.dart';
// ignore: camel_case_types
class Form_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
test line for testing

//      floatingActionButton: new 

FloatingActionButton(onPressed: null),
      appBar: new AppBar(
        backgroundColor: new Color(0xFFFFAB40),
        title: new Text('Register your Pick-Up account'),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            //Name (first, last)
            //phone number
            //email
            //choose your user name (optional)
            //choose your password
            //confirm password
            new Text(
              "Register your Pick-Up account",
              style: new TextStyle(fontSize: 23.0,
              color: const Color(0xFFFFAB40),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Flexible(
                  child: new TextField(
                      decoration: InputDecoration(
                          icon: const Icon(Icons.person),
                          hintText: 'Enter',
                          labelText: "Last Name",
                          contentPadding: EdgeInsets.all(10),
                      ),
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize:16.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
                  ),
                ),
                SizedBox(width: 15.0,),
                new Flexible(
                  child: new TextField(
                      decoration: InputDecoration(
                          //icon: const Icon(Icons.person),
                          hintText: 'Enter',
                          labelText: "First Name",
                          contentPadding: EdgeInsets.all(10),
                        //hasFloatingPlaceholder: false,
                      ),
                  textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize:16.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
                  ),
                ),
              ],
            ),
            new TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: const Icon(Icons.email),
                hintText: 'Enter',
                labelText: "Your email address",
              ),
//                keyboardType: TextInputType.multiline,
//                maxLines: 3,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            new TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.perm_identity),
                  hintText: 'Enter',
                  labelText: "Pick an username for this account",
                ),
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            new TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.lock),
                  hintText: 'Enter',
                  labelText: "Choose a password",
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            new TextField(
                decoration: InputDecoration(
                  //icon: const Icon(Icons.lock_open),
                  icon: const Icon(Icons.lock),
                  hintText: 'Enter',
                  labelText: "Enter your new password again",
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize:16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto")
            ),
            ButtonBar(
              children: <Widget>[
                ButtonTheme(
                  minWidth: 4.00,
                  height: 35.00,
                  child: RaisedButton(
                    child: Align(alignment: Alignment.center, child: Text("Submit",
                      style: TextStyle(
                        fontSize: 16.00, //The max size can fit in the button bar
                      ),
                    ),
                    ),
                    textColor: Colors.orangeAccent,
                    color: Colors.white,
                    elevation: 4.0, //shadow of button
                    splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
                    onPressed: () {
                      // TODO: Show the next page (101)
                      Navigator.of(context).pushNamed('/home');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
//      floatingActionButton: new FloatingActionButton(
//          elevation: 4.0,
//          child: Text("Submit"),
//          backgroundColor: new Color(0xFFFFAB40),
//          onPressed: (){
//            Navigator.of(context).pushNamed('/home');
//          }),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
