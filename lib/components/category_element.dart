import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CategoryElement extends StatelessWidget {
  const CategoryElement(
      {super.key, required this.text, required this.iconElement});
  final String text;
  final Icon iconElement;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.only(
          right: !kIsWeb ? screenWidth * 0.05 : screenWidth * 0.02),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: screenHeight * 0.01),
            width: !kIsWeb ? screenWidth * 0.2 : 80,
            height: screenHeight * 0.1,
            child: CircleAvatar(
              minRadius: 15,
              maxRadius: 80,
              backgroundColor: Color.fromARGB(255, 54, 53, 53),
              child: Container(
                padding: !kIsWeb
                    ? EdgeInsets.only(
                        right: text == "Games" ? 0 : screenWidth * 0.015)
                    : EdgeInsets.only(
                        right: text == "Fashion" || text == "Accessories"
                            ? 10
                            : 0),
                child: iconElement,
              ),
            ),
          ),
          Text(text, style: TextStyle(fontSize: 17))
        ],
      ),
    ));
  }
}
