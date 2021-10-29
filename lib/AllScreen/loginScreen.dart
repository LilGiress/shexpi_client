import 'package:flutter/material.dart';




import 'forgotPasswordScreen.dart';
import 'mainScreen.dart';

class LoginScreen extends StatelessWidget {
  static const String idScreen = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("SHEXPI"),
      // ),
      // backgroundColor: Colors.white,
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: 35.0,
      //         ),
      //         Image(
      //           image: AssetImage("images/velo.png"),
      //           width: 390.0,
      //           height: 250.0,
      //           alignment: Alignment.center,
      //         ),
      //         SizedBox(
      //           height: 1.0,
      //         ),
      //         Text(
      //           "Login as a rider",
      //           style: TextStyle(fontSize: 24.0, fontFamily: " bolt-regular"),
      //           textAlign: TextAlign.center,
      //         ),
      //
      //         // creation formulaire
      //         Padding(
      //           padding: EdgeInsets.all(20.0),
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 1.0,
      //               ),
      //               TextField(
      //
      //                 keyboardType: TextInputType.emailAddress,
      //                 decoration: InputDecoration(
      //                   labelText: "Email",
      //                   labelStyle: TextStyle(fontSize: 14.0),
      //                   hintStyle:
      //                   TextStyle(color: Colors.grey, fontSize: 10.0),
      //                 ),
      //                 style: TextStyle(fontSize: 14.0),
      //               ),
      //               //password input
      //               SizedBox(
      //                 height: 1.0,
      //               ),
      //               TextField(
      //
      //                 obscureText: true,
      //                 decoration: InputDecoration(
      //                   labelText: "Password",
      //                   labelStyle: TextStyle(fontSize: 14.0),
      //                   hintStyle:
      //                   TextStyle(color: Colors.grey, fontSize: 10.0),
      //                 ),
      //                 style: TextStyle(fontSize: 14.0),
      //
      //               ),
      //
      //               FlatButton(
      //                 onPressed: () {
      //                   Navigator.push(
      //                         context,
      //                         MaterialPageRoute(builder: (context) => ForgotPassword()),
      //                       );
      //                 },
      //                 child: Text(
      //                   'Forgot Password?',
      //                   style: TextStyle(color: Colors.grey, fontSize: 12),
      //                 ),
      //               ),
      //
      //
      //               //login button
      //               SizedBox(
      //                 height: 10.0,
      //               ),
      //               RaisedButton(
      //                 color: Colors.blueAccent,
      //                 textColor: Colors.white,
      //                 child: Container(
      //                   height: 50.0,
      //                   child: Center(
      //                     child: Text(
      //                       "Login",
      //                       style: TextStyle(
      //                           fontSize: 18.0, fontFamily: "bolt-regular"),
      //                     ),
      //                   ),
      //                 ),
      //                 shape: new RoundedRectangleBorder(
      //                   borderRadius: new BorderRadius.circular(24.0),
      //                 ),
      //                 onPressed: () {
      //                   Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) => MainScreen()),
      //                   );
      //                 },
      //               ),
      //             ],
      //           ),
      //         ),
      //         FlatButton(
      //           onPressed: () {
      //              Navigator.push(
      //                context,
      //               MaterialPageRoute(builder: (context) => RegisterScreen()),
      //            );
      //           },
      //           child: Text("Do not have an Account? Register here"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      /////////////////////////////////////////////////////
      // login with animation
      //////////////////////////////////

        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child:  Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/light-1.png')
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child:  Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/light-2.png')
                              )
                          ),
                        ),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child:  Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/clock.png')
                              )
                          ),
                        )),

                      Positioned(
                        child:  Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                       Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Entree votre Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Mot de Pass",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                       ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => MainScreen()),
                            );
                          },
                         child:Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ]
                            )
                        ),

                        child: Center(

                          child: Text("Se Connecter", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                         )
                      ),

                      SizedBox(height: 70,),

                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotPassword()),
                                   );
                               },
                               child:   Text("Mot de Pass Oublier?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),
                               ),


                    //Text("Mot de Pass Oublier?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),
                    ],
                  ),
                     )
              ],
             ),
            ),
          ),
    );




  }
}
