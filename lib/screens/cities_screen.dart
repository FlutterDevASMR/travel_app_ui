import 'package:flutter/material.dart';

import '../widgtes/option_widget.dart';

class CitiesScreen extends StatelessWidget {
  CitiesScreen({super.key});

  final List<String> cities = [
    'New York City',
    'Dubai',
    'Singapore',
  ];

  final List<String> citiesImages = [
    'New_York',
    'Dubai',
    'Singapore',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cities.length,
      itemBuilder: (context, index) =>
          OptionWidget(name: cities[index], imageUrl: citiesImages[index]),
      separatorBuilder: (context, index) => SizedBox(width: 10),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 20),
    );
  }
}
