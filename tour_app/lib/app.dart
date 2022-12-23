import 'package:flutter/material.dart';
import 'package:tour_app/screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
//import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(),
      // home: Locations(),
      theme: ThemeData(),
      //Add Routing
    );
  }
}
