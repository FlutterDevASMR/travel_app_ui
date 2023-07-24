import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({super.key, required this.name, required this.imageUrl});

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/${imageUrl.toLowerCase()}.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, bottom: 50, right: 20),
        child: Column(
          children: [
            Text(
              'Recommended',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                backgroundColor: Constants.bgColor,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 27,
                backgroundColor: Constants.bgColor,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Constants.bgColor,
                  ),
                  decoration: BoxDecoration(
                    color: Constants.buttonColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
