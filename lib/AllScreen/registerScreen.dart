import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

import 'loginScreen.dart';


class RegisterScreen extends StatefulWidget {
  static const String idScreen = "registerScreen";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  final List<Map<String, dynamic>> _items = [
    {
      'value': 'boxValue',
      'label': 'Velo',
      'icon': Icon(Icons.pedal_bike),
    },
    {
      'value': 'circleValue',
      'label': 'Car',
      'icon': Icon(Icons.directions_car_rounded),
      'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': 'starValue',
      'label': 'motocycle',
      'enable': false,
      'icon': Icon(Icons.motorcycle),
    },
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
                  SizedBox(
                    height: 35.0,
                  ),
                  Image(
                    image: AssetImage("images/velo.png"),
                    width: 390.0,
                    height: 250.0,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    "Register as a rider",
                    style: TextStyle(fontSize: 24.0, fontFamily: " bolt-regular"),
                    textAlign: TextAlign.center,
                  ),

                  // creation formulaire
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.0,
                        ),
                        TextField(

                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Surname",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        TextField(

                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        TextField(

                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        TextField(

                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        TextField(

                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: "phone",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        TextField(

                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Ville",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        //password input
                        SizedBox(
                          height: 1.0,
                        ),
                    SelectFormField(
                      type: SelectFormFieldType.dropdown, // or can be dialog
                      initialValue: 'circle',
                      icon: Icon(Icons.panorama_horizontal_select),
                      labelText: 'Shape',
                      items: _items,
                      onChanged: (val) => print(val),
                      onSaved: (val) => print(val),
                    ),
                        //login button
                        SizedBox(
                          height: 10.0,
                        ),
                        RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Container(
                            height: 50.0,
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 18.0, fontFamily: "bolt-regular"),
                              ),
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(24.0),
                          ),
                          onPressed: () {
                            print("cliker");
                          },
                        ),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(" hAlready have an Account? Login here"),
                  ),
                ],
              ),
             ),
              ),

          );



  }
}
