import 'package:flutter/material.dart';
import '../../models/location.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchAll();
    final locations = location.first;
    return Scaffold(
      appBar: AppBar(
        title: Text(locations.name),

        //title: Text("Location Details"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(locations.imagePath),
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
            ...textSections(locations) //add textsection to the existing list of children using the SPREAD operator and addAll Function
          ] 

          ),
    );
  }

  //Converting List of Location Fact to a lIST of TextSections using .map and convet it to list
  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
