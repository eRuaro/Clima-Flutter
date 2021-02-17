import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async {
    Location location = Location();

    //Await can only work on futures - that's why Future is used in location.dart
    await location.getCurrentLocation();

    print(location.latitude);
    print(location.longitude);
  }

  //Gets Device Location when loading_screen state is initialized
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
