// The screen displayed when the app is opened (unless the user is already signed in)

import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange.withOpacity(0.25),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  style: TextStyle(color: Theme.of(context).accentColor),
                  cursorColor: Theme.of(context).accentColor,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Theme.of(context).accentColor),
                    fillColor: Theme.of(context).accentColor,
                    //filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange.withOpacity(0.25),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Theme.of(context).accentColor),
                  cursorColor: Theme.of(context).accentColor,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Theme.of(context).accentColor),
                    fillColor: Theme.of(context).accentColor,
                    //filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkBoxValue,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (bool newValue) {
                      setState(() {
                        checkBoxValue = newValue;
                      });
                    },
                  ),
                  Text(
                    'Keep me signed in',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Theme.of(context).primaryColor),
                child: GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'LOGIN', // change font
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'OR',
                  style: TextStyle(
                      color: Theme.of(context).accentColor, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign in with',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/fb-logo.jpg'),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/google-logo.jpg'),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "Sign Up here",
                    style: TextStyle(color: Theme.of(context).accentColor, fontWeight:FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
