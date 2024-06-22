import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({super.key, required this.title, required this.controller});
  final String title;
  final ScrollController controller;
  void _scrollRight() {
    controller.animateTo(
      controller.position.maxScrollExtent,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: !kIsWeb ? screenWidth * 0.7 : screenWidth * 0.6,
            child: Text(
              maxLines: 1,
              title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: _scrollRight,
                child: Text("See all",
                    style: TextStyle(
                      fontSize: !kIsWeb ? screenWidth * 0.04 : 18,
                    )),
              ),
              InkWell(
                onTap: _scrollRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Icon(
                    FontAwesomeIcons.arrowRight,
                    size: !kIsWeb ? screenWidth * 0.04 : 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
