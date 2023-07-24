import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/cities_screen.dart';
import 'package:travel_app/screens/countries_screen.dart';
import 'package:travel_app/screens/destination_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int selectedItem = 0;

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Constants.bgColor,
      appBar: AppBar(
        toolbarHeight: height / 7,
        backgroundColor: Constants.bgColor,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Arian',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Recommendation',
                    style: TextStyle(
                      color: Constants.buttonColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Constants.buttonColor,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          children: List.generate(
            4,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = index;
                });
              },
              child: Container(
                child: Icon(
                  _getItemIcon(index),
                  size: 27,
                  color: (index == selectedItem)
                      ? Constants.bgColor
                      : Constants.buttonColor,
                ),
                decoration: ShapeDecoration(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  color: (index == selectedItem)
                      ? Constants.buttonColor
                      : Constants.bgColor,
                ),
                padding: EdgeInsets.all(12),
              ),
            ),
          ),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
      body: Stack(
        children: [
          PageView(
            children: [
              DestinationScreen(),
              CountriesScreen(),
              CitiesScreen(),
            ],
            scrollDirection: Axis.vertical,
            controller: _controller,
          ),
          Positioned(
            left: 20,
            top: 100,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              axisDirection: Axis.vertical,
              effect: JumpingDotEffect(
                dotWidth: 20,
                dotHeight: 10,
                spacing: 70,
                dotColor: Colors.grey,
                activeDotColor: Constants.buttonColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getItemIcon(int index) {
    IconData icon;

    switch (index) {
      case 0:
        icon = Icons.home_outlined;

      case 1:
        icon = Icons.explore_outlined;

      case 2:
        icon = Icons.bookmark_outline;

      case 3:
        icon = Icons.person_outlined;

      default:
        icon = Icons.home_outlined;
    }

    return icon;
  }
}
