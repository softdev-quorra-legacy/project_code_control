import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State<Login> {
  bool passwordVisible; //declare passwordVisible

  // ignore: must_call_super
  void initState() {
    passwordVisible = false;
  }
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          children: <Widget>[
            SizedBox(height: 60.0),
            Column(
              children: <Widget>[
                Image.asset('assets/logoname2.png', height: 80.00),
                SizedBox(height: 80.0),
              ],
            ),
            SizedBox(height: 30.0),
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

            TextFormField(
              keyboardType: TextInputType.text,
              controller: _passwordController,
              obscureText: passwordVisible,
              decoration: InputDecoration(
                //filled: true,
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                       passwordVisible
                          ? passwordVisible = false
                          : passwordVisible = true;
                    });
                  },
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Align(alignment: Alignment.centerLeft, child: Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 12.00, //The max size can fit in the button bar
                      decoration: TextDecoration.underline,
                    ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/forgot_password');
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
                      Navigator.of(context).pushNamed('/form');
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
                      //if (_usernameController.TextEditingController == 'user' && _passwordController == 'password')
                      Navigator.of(context).pushNamed('/home'); //Direct to home page
                      print('home');
                    },
                  ),
                ),
              ],
            ),
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
