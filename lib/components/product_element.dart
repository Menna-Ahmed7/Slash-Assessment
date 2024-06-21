import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash_task_/models/product_info.dart';

class ProductElement extends StatefulWidget {
  const ProductElement({
    super.key,
    required this.info,
  });

  final ProductInfo info;
  @override
  State<ProductElement> createState() => _ProductElementState();
}

class _ProductElementState extends State<ProductElement> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final displayedPrice = "EGP " + widget.info.price;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: !kIsWeb ? screenHeight * 0.01 : screenHeight * 0.05,
              right: screenWidth * 0.025,
              bottom: screenHeight * 0.01),
          child: Stack(
            children: [
              ClipRRect(
                // child: Container(
                //   child: Image(
                //     image: AssetImage('assets/images/recommended_1.png'),
                //     alignment: Alignment.center,
                //     height: double.infinity,
                //     width: double.infinity,
                //     fit: BoxFit.fill,
                //   ),
                //   color: Colors.black,
                // ),
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                    // color: Colors.black,
                    width: !kIsWeb ? screenWidth * 0.4 : 150,
                    height: !kIsWeb ? screenHeight * 0.18 : 130,
                    child:
                        Image.asset(widget.info.imagepath, fit: BoxFit.cover)),
              ),
              Positioned(
                top: 5,
                right: 7,
                child: InkWell(
                  onTap: () {
                    widget.info.isLiked = !widget.info.isLiked;
                    setState(() {});
                  },
                  // child: widget.info.isLiked
                  //     ? Icon(FontAwesomeIcons.heart)
                  //     : Icon(
                  //         FontAwesomeIcons.heart,
                  //       ),
                  child: Icon(
                    FontAwesomeIcons.heart,
                    color: widget.info.isLiked ? Colors.red : Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: !kIsWeb ? screenWidth * 0.4 : 150,
          child: Text(
            maxLines: 1,
            widget.info.name,
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: !kIsWeb ? screenWidth * 0.05 : 24,
                color: Color.fromARGB(255, 56, 55, 55)),
          ),
        ),
        SizedBox(
          // width: !kIsWeb ? screenWidth * 0.3 : screenWidth * 0.1,
          width: !kIsWeb ? screenWidth * 0.4 : 150,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                displayedPrice,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: !kIsWeb ? screenWidth * 0.05 : 20,
                ),
              ),
              // Text(
              //   "55",
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: screenWidth * 0.042,
              //   ),
              // ),
              // SizedBox(width: screenWidth*0.,),
              CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: !kIsWeb ? screenWidth * 0.03 : 17,
                child: Container(
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
