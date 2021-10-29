import 'package:flutter/material.dart';

import 'loginScreen.dart';

class ForgotPassword extends StatelessWidget {
  static const String idScreen = "forgotPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your Email',
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
              TextFormField(

                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.black54,
                  ),
                  errorStyle: TextStyle(color: Colors.black54),
                  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Send Email'),
                onPressed: () {},
              ),
              FlatButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text('Sign In'),
                onPressed: () {
                   Navigator.push(
                         context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                       );

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
