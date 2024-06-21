import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      centerTitle: true,
      leadingWidth: screenWidth * 0.3,
      leading: Padding(
        padding: EdgeInsets.only(top: 15, left: screenWidth * 0.06),
        child: Text(
          "Slash.",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      title: const Row(children: [
        Icon(
          FontAwesomeIcons.locationDot,
          size: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nasr City", style: TextStyle(fontSize: 15)),
              Text("Cairo",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Icon(
          FontAwesomeIcons.angleDown,
        )
      ]),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(
            FontAwesomeIcons.bell,
            size: 30,
          ),
        )
      ],
    );
  }
}
