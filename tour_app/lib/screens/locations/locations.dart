import 'package:flutter/material.dart';
import 'package:tour_app/screens/location_detail/location_detail.dart';
import '../../models/location.dart';

//UI Screen to display available tourist Locations
class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final location = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist Locations"),
        centerTitle: true,
      ),
      // body: ListView(
      //converting location.name to a Text Widget with the location.name parameter
      //   children: location.map((location) => Text(location.name)).toList(),
      // ),
      //Better way -- Generating with ListVew
      body: ListView.builder(
        itemCount: location.length,
        itemBuilder: (BuildContext context, int index) {
          print('body:::::::::::::::::::::::::::$location');
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              //borderRadius: BorderRadius.circular(200),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LocationDetail(
                          locationName: location[index].name,
                          locationImage: location[index].imagePath,
                          locationFact: location[index],
                        );
                      },
                    ),
                  );
                },
                tileColor: const Color(0xFFEEEEEE),
                title: Text(location[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}
