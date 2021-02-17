import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class Location {

  double latitude;
  double longitude;

  //Function that gets a devices location
  Future <void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
//Async Programming allows functions to run in the background
}