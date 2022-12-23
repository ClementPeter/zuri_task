import 'package:flutter/material.dart';
import '../../models/contact.dart';

//UI Screen to display Contact Information Locations
class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contacts = Contact.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
        centerTitle: true,
      ),

      //Better way-- Generating with ListVew
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: ListTile(
                onTap: () {},
                tileColor: const Color(0xFFEEEEEE),
                title: Text(contacts[index].name),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(contacts[index].image),
                ),
                subtitle: Text(contacts[index].number),
              ),
            ),
          );
        },
      ),
    );
  }
}
