import 'package:flutter/material.dart';
import '../../models/location.dart';

//lib\screens\location_detail\image_banner.dart/
//import 'image_banner.dart';
///import 'text_section.dart';
///
//UI Screen to display available tourist Locations
class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchAll();
    // final locations = location.first;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist Locations"),
        centerTitle: true,
      ),
      body: ListView(
        //converting location.name to lo Text Widget with the location.name parameter
        children: location.map((location) => Text(location.name)).toList(),
      ),
      //Better way-- Generating with ListVew
      // body: ListView.builder(
      //   itemCount: location.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ListTile(
      //         onTap: () {},
      //         tileColor: const Color(0xFFEEEEEE),
      //         title: Text(location[index].name),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
