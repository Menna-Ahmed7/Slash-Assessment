import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.18,
      width: screenWidth * 0.9,
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.04),
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ClipRRect(
                child: SizedBox(
                  child: Image.asset('assets/blackfriday.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ClipRRect(
                child: SizedBox(
                  child: Image.asset('assets/redimage.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
