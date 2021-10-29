import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
class RatingTabPage extends StatefulWidget {
  //const RatingTabPage({Key? key}) : super(key: key);
  @override
  _RatingTabPageState createState() => _RatingTabPageState();
}

class _RatingTabPageState extends State<RatingTabPage> {
  bool _animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Color(0xff686de0),
              child: AvatarGlow(
                endRadius: 70,
                animate: _animate,
                child: Material(
                  elevation: 8.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Image.asset(
                      'images/logo.png',
                      height: 50,
                    ),
                    radius: 30,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 16.0,
            ),


          ],
        ),
      ),

    );
  }
}
