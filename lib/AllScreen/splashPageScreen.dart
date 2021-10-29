import 'dart:async';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/appTheme.dart';
import '../utils/shared_preferences.dart';
import '../utils/themeBloc.dart';
import '../utils/themeEvent.dart';
import 'loginScreen.dart';

class SplashPageScreen extends StatefulWidget {
  static const String idScreen = "splashPage";
  const SplashPageScreen({Key? key}) : super(key: key);

  @override
  _SplashPageScreenState createState() => _SplashPageScreenState();
}

class _SplashPageScreenState extends State<SplashPageScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => {_loadScreen(context)});
  }

  _loadScreen(context ) async {
    await Prefs.load();
    context.readind<ThemeBloc>().add(ThemeChanged(
        theme: Prefs.getBool(Prefs.DARKTHEME, def: false)
            ? AppTheme.DarkTheme
            : AppTheme.LightTheme));
    //Navigator.of(context).pushReplacementNamed( loginScreen());
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[

            Expanded(
              flex: 3,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Image(

                    width: 180.0,
                    height: 150.0,
                    alignment: Alignment.center,
                    image: AssetImage("images/velo.png"),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,

                    children: <Widget>[

                      Icon(
                        Icons.delivery_dining,
                        color: kColorPink,
                        size: 48,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'SHEXPI',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: 'APP',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ],


                        ),
                      ),
                    ],

                  ),
                  SizedBox(height: 18.0,),
                  Row(
                    mainAxisSize: MainAxisSize.min,

                    children: <Widget>[


                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Acceptez une Livraison',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),


                          ],


                        ),
                      ),
                    ],

                  ),


                ],

              ),
            ),

            Container(
              width: 150,
              height: 2,
              child: LinearProgressIndicator(
                backgroundColor: kColorBlue,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],

        ),
      ),
    );
  }
}
