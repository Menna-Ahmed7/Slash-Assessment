import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slash_task_/components/list_header.dart';
import 'package:slash_task_/components/product_element.dart';
import 'package:slash_task_/models/product_info.dart';
import 'package:slash_task_/services/homepage_services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ProductsListView extends StatelessWidget {
  ProductsListView(
      {super.key, required this.productsinfo, required this.title});

  final List<ProductInfo> productsinfo;
  final String title;
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // print(getBestSelling()[0]);
    // List<ProductInfo> productsinfo = getBestSelling();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListHeader(title: title, controller: _controller),
        productsinfo.length > 0
            ? Container(
                height: !kIsWeb ? screenHeight * 0.3 : screenHeight * 0.4,
                width: screenWidth * 0.9,

                // margin: EdgeInsets.only(right: screenWidth * 0.03),
                child: CustomScrollView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return ProductElement(
                          info: productsinfo[index],
                        );
                      }, childCount: productsinfo.length),
                    )
                  ],
                ),
              )
            : Container(
                child: Text("No products"),
              )
      ],
    );
  }
}
