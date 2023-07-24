import 'package:flutter/material.dart';

import '../widgtes/option_widget.dart';

class DestinationScreen extends StatelessWidget {
  DestinationScreen({super.key});

  final List<String> destinations = [
    'Central\nPark',
    'Empire\nState',
    'Times\nSquare',
    'Burj\nAl Arab',
    'Burj\nKhalifa',
    'Dubai\nMall',
    'Marina Bay\nSands',
    'Gardens\nby The Bay',
    'Sentosa',
  ];

  final List<String> destinationImages = [
    'Central_Park',
    'Empire_State',
    'Times_Square',
    'Burj_Al_Arab',
    'Burj_Khalifa',
    'Dubai_Mall',
    'Marina_Bay_Sands',
    'Gardens_by_The_Bay',
    'Sentosa',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: destinations.length,
      itemBuilder: (context, index) => OptionWidget(
          name: destinations[index], imageUrl: destinationImages[index]),
      separatorBuilder: (context, index) => SizedBox(width: 10),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 20),
    );
  }
}
