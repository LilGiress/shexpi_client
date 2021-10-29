import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomeTabPage extends StatelessWidget {
  static const String idScreen = "homeTabPage";


  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  late GoogleMapController newGoogleMapController;

  static final CameraPosition _Yaounde = CameraPosition(
      target: LatLng(3.8667, 11.5167),
      zoom: 14.4746
  );


  late Position currentPosition;
  var geoLocator = Geolocator();

  void locatePosition() async
  {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLngPosition = LatLng(position.latitude, position.longitude);
    CameraPosition cameraPosition = CameraPosition(
        target: latLngPosition, zoom: 14);
    newGoogleMapController.animateCamera(
        CameraUpdate.newCameraPosition(cameraPosition));

    //String address = await AssistantMethods.searchCoordinateAddress(position, context);
    //print("This is your address :: " + address);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        GoogleMap(
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,

            initialCameraPosition:_Yaounde,

            onMapCreated:(GoogleMapController controller)
            {
              _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;
              locatePosition();
            }
        ),
    // Driver onLine - offLine
    Container(
      height: 140.0,
      width: double.infinity,
      color: Colors.black12,
    ),

   Positioned(
     top: 60.0,
     left: 0.0,
     right: 0.0,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 16.0),
           child: RaisedButton(
             onPressed: ()
             {

             },
             color: Colors.green,
             child: Padding(
               padding: EdgeInsets.all(17.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("onLine Now", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                   Icon(Icons.phone_android, color: Colors.white, size: 20.0,),
                 ],
               ),
             ),
           ),
         ),
       ],
     ),
   ),
   // MainScreen()
      ],
    );
  }
}
