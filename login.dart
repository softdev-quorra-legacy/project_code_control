import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          children: <Widget>[
            SizedBox(height: 60.0),
            Column(
              children: <Widget>[
                Image.asset('assets/logoname2.png'),
                SizedBox(height: 80.0),
              ],
            ),
            SizedBox(height: 20.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // Add TextField widgets
            // [Name]
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                //filled: true,
                labelText: 'Username',
              ),
            ),
              // spacer
            SizedBox(height: 0),
              // [Password]
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                //filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            // TODO: Add button bar (101)
//            Stack(
//              // TODO: Add a beveled rectangular border to CANCEL (103)
//              children: <Widget>[
//                // TODO: Add buttons (101)
//                FlatButton(
//                  child: Align(alignment: Alignment.centerRight, child: Text("Forgot Password?",
//                  style: TextStyle(
//                    decoration: TextDecoration.underline,
//                  ),
//                ),
//                  ),
//                  onPressed: () {
//                  },
//                ),
//              ],
//            ),
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                // TODO: Add buttons (101)
                FlatButton(
                  child: Align(alignment: Alignment.centerLeft, child: Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 9.50, //The max size can fit in the button bar
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  ),
                  onPressed: () {

                  },
                ),
                ButtonTheme(
                  minWidth: 4.00,
                  height: 35.00,

                  child: RaisedButton(
                    child: const Text('Sign Up'),
                    textColor: Colors.orangeAccent,
                    color: Colors.white,
                    elevation: 4.0, //shadow of button
                    splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
                    onPressed: () {
                      // TODO: Show the next page (101)
                      Navigator.of(context).pop('/home');
                    },
                  ),
                ),

                ButtonTheme(
                  minWidth: 4.00,
                  height: 35.00,
                  child: RaisedButton(
                    child: const Text('LOG IN'),
                    textColor: Colors.orangeAccent,
                    color: Colors.white,
                    elevation: 4.0, //shadow of button
                    splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
                    onPressed: () {
                      // TODO: Show the next page (101)
                      Navigator.of(context).pop('/home');
                    },
                  ),
                ),
              ],
            ),
            new InkWell(
              splashColor: Color(0xFF424242),//it revealed white only when it's in a pressed state
              onTap: () => Navigator.of(context).pop('/home'), //Actions when tapping the button
              child: new Container(
                //width: 100.0,
                height: 35.0, //Button size
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border.all(color: Colors.white),
                  borderRadius: new BorderRadius.circular(35.0),
                ),
                child: new Center(child: new Text('Log in with Google account', style: new TextStyle(fontSize: 16.0, color: Colors.orangeAccent),),),
              ),

            )
          ],
        ),
      ),
      backgroundColor: Colors.orangeAccent,
    );
  }
}
