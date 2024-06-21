import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: screenWidth * 0.15),
      decoration: BoxDecoration(
        color: Color.fromARGB(
            255, 237, 236, 236), // Set the background color to white
        borderRadius:
            BorderRadius.circular(10), // Rounded corners for the container
      ),
      child: const TextField(
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors
                      .transparent, // Set to white to match the container background
                ),
              ),
              contentPadding: EdgeInsets.all(5.0),
              hintText: 'Search here..',
              hintStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey))),
    );
  }
}
