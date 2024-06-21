import 'package:flutter/material.dart';
import 'package:slash_task_/components/all_products.dart';
import 'package:slash_task_/components/categories.dart';
import 'package:slash_task_/components/offers.dart';
import 'package:slash_task_/components/products_list_view.dart';
import 'package:slash_task_/models/product_info.dart';
import 'package:slash_task_/services/homepage_services.dart';

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductInfo> bestSellings = getBestSelling();
    final List<ProductInfo> newArrivals = getNewArrival();
    final List<ProductInfo> recommended = getRecommendedForYou();
    return Expanded(child: SingleChildScrollView()
        //     child: Row(children: [
        //   Column(
        //     children: [
        //       ProductsListView(productsinfo: bestSellings, title: "Best Selling"),
        //       ProductsListView(productsinfo: newArrivals, title: "New Arrival"),
        //     ],
        //   ),
        //   // Offers(),

        //   // Column(children: [
        //   // CustomSearchBar(),
        //   // ]),
        //   Column(children: [
        //     Categories(),
        //     ProductsListView(
        //         productsinfo: recommended, title: "Recommended for you")
        //   ])
        // ])
        );
  }
}
