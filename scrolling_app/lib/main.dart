import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Scrolling Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//List of network images
List<String> images = [
  "https://unsplash.com/photos/JO_S6ewBqAk",
  "https://unsplash.com/photos/JO_S6ewBqAk"
];
//List of countries
const countries = [
  "Afghanistan",
  "Albania",
  "Algeria",
  "American Samoa",
  "Andorra",
  "Angola",
  "Anguilla",
  "Antarctica",
  "Antigua and Barbuda",
  "Argentina",
  "Armenia",
  "Aruba",
  "Australia",
  "Austria",
  "Azerbaijan",
  "Bahamas (the)",
  "Bahrain",
  "Bangladesh",
  "Barbados",
  "Belarus",
  "Belgium",
  "Belize",
  "Benin",
  "Bermuda",
  "Bhutan",
  "Bolivia (Plurinational State of)",
  "Bonaire, Sint Eustatius and Saba",
  "Bosnia and Herzegovina",
  "Botswana",
  "Bouvet Island",
  "Brazil",
  "British Indian Ocean Territory (the)",
  "Brunei Darussalam",
  "Bulgaria",
  "Burkina Faso",
  "Burundi",
  "Cabo Verde",
  "Cambodia",
  "Cameroon",
  "Canada",
  "Cayman Islands (the)",
  "Central African Republic (the)",
  "Chad",
  "Chile",
  "China",
  "Christmas Island",
  "Cocos (Keeling) Islands (the)",
  "Colombia",
  "Comoros (the)",
  "Congo (the Democratic Republic of the)",
  "Congo (the)",
  "Cook Islands (the)",
  "Costa Rica",
  "Croatia",
  "Cuba",
  "Curaçao",
  "Cyprus",
  "Czechia",
  "Côte d'Ivoire",
  "Denmark",
  "Djibouti",
  "Dominica",
  "Dominican Republic (the)",
  "Ecuador",
  "Egypt",
  "El Salvador",
  "Equatorial Guinea",
  "Eritrea",
  "Estonia",
  "Eswatini",
  "Ethiopia",
  "Falkland Islands (the) [Malvinas]",
  "Faroe Islands (the)",
  "Fiji",
  "Finland",
  "France",
  "French Guiana",
  "French Polynesia",
  "French Southern Territories (the)",
  "Gabon",
  "Gambia (the)",
  "Georgia",
  "Germany",
  "Ghana",
  "Gibraltar",
  "Greece",
  "Greenland",
  "Grenada",
  "Guadeloupe",
  "Guam",
  "Guatemala",
  "Guernsey",
  "Guinea",
  "Guinea-Bissau",
  "Guyana",
  "Haiti",
  "Heard Island and McDonald Islands",
  "Holy See (the)",
  "Honduras",
  "Hong Kong",
  "Hungary",
  "Iceland",
  "India",
  "Indonesia",
  "Iran (Islamic Republic of)",
  "Iraq",
  "Ireland",
  "Isle of Man",
  "Israel",
  "Italy",
  "Jamaica",
  "Japan",
  "Jersey",
  "Jordan",
  "Kazakhstan",
  "Kenya",
  "Kiribati",
  "Korea (the Democratic People's Republic of)",
  "Korea (the Republic of)",
  "Kuwait",
  "Kyrgyzstan",
  "Lao People's Democratic Republic (the)",
  "Latvia",
  "Lebanon",
  "Lesotho",
  "Liberia",
  "Libya",
  "Liechtenstein",
  "Lithuania",
  "Luxembourg",
  "Macao",
  "Madagascar",
  "Malawi",
  "Malaysia",
  "Maldives",
  "Mali",
  "Malta",
  "Marshall Islands (the)",
  "Martinique",
  "Mauritania",
  "Mauritius",
  "Mayotte",
  "Mexico",
  "Micronesia (Federated States of)",
  "Moldova (the Republic of)",
  "Monaco",
  "Mongolia",
  "Montenegro",
  "Montserrat",
  "Morocco",
  "Mozambique",
  "Myanmar",
  "Namibia",
  "Nauru",
  "Nepal",
  "Netherlands (the)",
  "New Caledonia",
  "New Zealand",
  "Nicaragua",
  "Niger (the)",
  "Nigeria",
  "Niue",
  "Norfolk Island",
  "Northern Mariana Islands (the)",
  "Norway",
  "Oman",
  "Pakistan",
  "Palau",
  "Palestine, State of",
  "Panama",
  "Papua New Guinea",
  "Paraguay",
  "Peru",
  "Philippines (the)",
  "Pitcairn",
  "Poland",
  "Portugal",
  "Puerto Rico",
  "Qatar",
  "Republic of North Macedonia",
  "Romania",
  "Russian Federation (the)",
  "Rwanda",
  "Réunion",
  "Saint Barthélemy",
  "Saint Helena, Ascension and Tristan da Cunha",
  "Saint Kitts and Nevis",
  "Saint Lucia",
  "Saint Martin (French part)",
  "Saint Pierre and Miquelon",
  "Saint Vincent and the Grenadines",
  "Samoa",
  "San Marino",
  "Sao Tome and Principe",
  "Saudi Arabia",
  "Senegal",
  "Serbia",
  "Seychelles",
  "Sierra Leone",
  "Singapore",
  "Sint Maarten (Dutch part)",
  "Slovakia",
  "Slovenia",
  "Solomon Islands",
  "Somalia",
  "South Africa",
  "South Georgia and the South Sandwich Islands",
  "South Sudan",
  "Spain",
  "Sri Lanka",
  "Sudan (the)",
  "Suriname",
  "Svalbard and Jan Mayen",
  "Sweden",
  "Switzerland",
  "Syrian Arab Republic",
  "Taiwan",
  "Tajikistan",
  "Tanzania, United Republic of",
  "Thailand",
  "Timor-Leste",
  "Togo",
  "Tokelau",
  "Tonga",
  "Trinidad and Tobago",
  "Tunisia",
  "Turkey",
  "Turkmenistan",
  "Turks and Caicos Islands (the)",
  "Tuvalu",
  "Uganda",
  "Ukraine",
  "United Arab Emirates (the)",
  "United Kingdom of Great Britain and Northern Ireland (the)",
  "United States Minor Outlying Islands (the)",
  "United States of America (the)",
  "Uruguay",
  "Uzbekistan",
  "Vanuatu",
  "Venezuela (Bolivarian Republic of)",
  "Viet Nam",
  "Virgin Islands (British)",
  "Virgin Islands (U.S.)",
  "Wallis and Futuna",
  "Western Sahara",
  "Yemen",
  "Zambia",
  "Zimbabwe",
  "Åland Islands"
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildGridViewBuilderExample(),
    );
  }
}

//build a widget method that return a list of containers and text with differernt colors
Widget buildListViewExample() {
  return ListView(
    children: [
      Container(
        color: Colors.red,
        height: 100,
        child: const Center(
          child: Text(
            'Red',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      Container(
        color: Colors.green,
        height: 100,
        child: const Center(
          child: Text(
            'Green',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      Container(
        color: Colors.blue,
        height: 100,
        child: const Center(
          child: Text(
            'Blue',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      Container(
        color: Colors.yellow,
        height: 100,
        child: const Center(
          child: Text(
            'Yellow',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      Container(
        color: Colors.orange,
        height: 100,
        child: const Center(
          child: Text(
            'Orange',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      Container(
        color: Colors.purple,
        height: 100,
        child: const Center(
          child: Text(
            'Purple',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    ],
  );
}

///ListView.builder build a widget method that return a listViewBuilder of country and indexes
Widget buildListViewBuilderExample() {
  return ListView.builder(
    itemCount: countries.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(countries[index]),
      );
    },
  );
}

///ListView.sepereated build a widget method that return a listView.Seperated with a divider as the seperator of country and indexes
Widget buildListViewSeparatedExample() {
  return ListView.separated(
    itemCount: countries.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(countries[index]),
      );
    },
    separatorBuilder: (context, index) {
      return const Divider();
    },
  );
}

//ListView.custom Example- build a widget that returns a listView.Custom of country and index
Widget buildListViewCustomExample() {
  return ListView.custom(
    childrenDelegate: SliverChildBuilderDelegate(
      (context, index) {
        return ListTile(
          title: Text(countries[index]),
        );
      },
      childCount: countries.length,
    ),
  );
}

//GridView Example
Widget buildGridViewBuilderExample() {
  return GridView.builder(
    //scrollDirection: Axis.horizontal,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing: 30,
      mainAxisSpacing: 30,
    ),
    itemCount: countries.length,
    itemBuilder: (context, index) {
      return Container(
        //text of countries
        color: Color.fromARGB(93, 132, 184, 227),
        child: Center(
          child: Text(
            countries[index],
            style: TextStyle(
              fontSize: 20,
           
            ),
            //Add decoration
          ),
        ),
      );
    },
  );
}
