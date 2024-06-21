import 'package:flutter/material.dart';
import 'package:slash_task_/components/product_element.dart';
import 'package:slash_task_/models/product_info.dart';
import 'package:slash_task_/services/homepage_services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ProductsListView extends StatelessWidget {
  const ProductsListView(
      {super.key, required this.productsinfo, required this.title});

  final List<ProductInfo> productsinfo;
  final String title;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // print(getBestSelling()[0]);
    // List<ProductInfo> productsinfo = getBestSelling();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
          height: !kIsWeb ? screenHeight * 0.3 : screenHeight * 0.4,
          width: screenWidth * 0.9,

          // margin: EdgeInsets.only(right: screenWidth * 0.03),
          child: CustomScrollView(
            scrollDirection: Axis.horizontal,
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ProductElement(
                      info: productsinfo[index],);
                }, childCount: productsinfo.length),
              )
            ],
          ),
        )
      ],
    );
  }
}
