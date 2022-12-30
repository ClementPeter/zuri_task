import 'package:flutter/material.dart';
import 'package:tour_app/models/location_fact.dart';
import '../../models/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  LocationDetail(
      {Key? key,
      required this.locationName,
      required this.locationFact,
      required this.locationImage})
      : super(key: key);
  String locationName;
  String locationImage;
  Location locationFact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(locationName),
        //title: Text("Location Details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(locationImage),
          //Instead of this - In Effiecient
          // TextSection(
          //   "Tourist Attraction 1",
          //   "Location 1 is a very thrilling spot for tourist",
          // ),
          // TextSection(
          //   "Tourist Attraction 1",
          //   "Location 1 is a very thrilling spot for tourist",
          // ),
          // TextSection(
          //   "Tourist Attraction 1",
          //   "Location 1 is a very thrilling spot for tourist",
          // ),
          //We use this - SPREAD OPERATOR
          ...textSections(
              locationFact) //add textsection to the existing list of children using the SPREAD operator and addAll Function
        ],
      ),
    );
  }

  //Converting List of Location Fact to a lIST of TextSections using .map and convert it to list
  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
