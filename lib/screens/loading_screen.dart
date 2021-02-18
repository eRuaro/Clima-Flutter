import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    //Instantly pushes to LocationScreen on startup
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  //Gets Device Location when loading_screen state is initialized
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.amber,
          size: 100,
        ),
      ),
    );
  }
}
