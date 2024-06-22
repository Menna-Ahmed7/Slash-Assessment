import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash_task_/components/category_element.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:slash_task_/components/list_header.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListHeader(title: "Categories", controller: _controller),
        Container(
          height: screenHeight * 0.2,
          width: screenWidth * 0.9,

          margin: EdgeInsets.only(top: screenHeight * 0.02),
          // margin: EdgeInsets.only(right: screenWidth * 0.03),
          child: CustomScrollView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            slivers: [
              CategoryElement(
                  text: "Fashion",
                  iconElement: Icon(FontAwesomeIcons.shirt,
                      color: Colors.white,
                      size: !kIsWeb ? screenWidth * 0.06 : 30)),
              CategoryElement(
                  text: "Games",
                  iconElement: Icon(FontAwesomeIcons.diceFive,
                      color: Colors.white,
                      size: !kIsWeb ? screenWidth * 0.06 : 30)),
              CategoryElement(
                  text: "Accessories",
                  iconElement: Icon(FontAwesomeIcons.glasses,
                      color: Colors.white,
                      size: !kIsWeb ? screenWidth * 0.06 : 30)),
              CategoryElement(
                  text: "Books",
                  iconElement: Icon(FontAwesomeIcons.book,
                      color: Colors.white,
                      size: !kIsWeb ? screenWidth * 0.06 : 30))
            ],
          ),
        )
      ],
    );
  }
}
