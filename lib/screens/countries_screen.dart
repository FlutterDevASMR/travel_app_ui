import 'package:flutter/material.dart';

import '../widgtes/option_widget.dart';

class CountriesScreen extends StatelessWidget {
  CountriesScreen({super.key});

  final List<String> countries = [
    'United States of America',
    'United Arab Emirates',
    'Singapore'
  ];

  final List<String> countriesImages = [
    'usa',
    'uae',
    'singapore',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: countries.length,
      itemBuilder: (context, index) => OptionWidget(
          name: countries[index], imageUrl: countriesImages[index]),
      separatorBuilder: (context, index) => SizedBox(width: 10),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 20),
    );
  }
}
