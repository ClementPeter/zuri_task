import 'package:contact_app/models/contact_model.dart';

//Contains Model Contents to structure individual Model

class Contact {
  final List<ContactModels> contact;

  Contact(this.contact);

  //Fuction to fetchAll data
  static List<ContactModels> fetchAll() {
    return [
      ContactModels('Abbie', 'assets/images/contact_1.png', '09010020040'),
      ContactModels('Monday', 'assets/images/contact_2.png', "07010020047"),
      ContactModels('Tuesday', 'assets/images/contact_3.png', '08010020040'),
      ContactModels('Wednesday', 'assets/images/contact_4.png', '07010020043'),
      ContactModels('Thursday', 'assets/images/contact_5.png', '08010020045'),
      ContactModels('Friday', 'assets/images/contact_6.png', '09050020032'),
      ContactModels('Saturday', 'assets/images/contact_7.png', '09010020040'),
      ContactModels('Sunday', 'assets/images/contact_8.png', '070100520040'),
      ContactModels('January', 'assets/images/contact_20.png', '08030020040'),
      ContactModels('February', 'assets/images/contact_10.png', '09030020040'),
      ContactModels('March', 'assets/images/contact_11.png', '07030020040'),
      ContactModels('April', 'assets/images/contact_12.png', '05030020040'),
      ContactModels('May', 'assets/images/contact_13.png', '07030020040'),
      ContactModels('June', 'assets/images/contact_14.png', '08050060040'),
      ContactModels('July', 'assets/images/contact_15.png', '07230020040'),
      ContactModels('September', 'assets/images/contact_16.png', '06030020040'),
      ContactModels('October', 'assets/images/contact_17.png', '0810020040'),
      ContactModels('November', 'assets/images/contact_18.png', '08030020040'),
      ContactModels('December', 'assets/images/contact_19.png', '07030020040')
    ];
  }
}
