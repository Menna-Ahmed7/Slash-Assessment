import 'package:flutter/material.dart';
import 'package:slash_task_/components/products_list_view.dart';
import 'package:slash_task_/models/product_info.dart';
import 'package:slash_task_/services/homepage_services.dart';

class ProductsDisplay extends StatelessWidget {
  const ProductsDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductsListView(
          title: "Best Selling",
          getProductsInfo: getBestSelling,
        ),
        ProductsListView(
          title: "New Arrival",
          getProductsInfo: getNewArrival,
        ),
        ProductsListView(
          title: "Recommended for you",
          getProductsInfo: getRecommendedForYou,
        )
      ],
    );
  }
}
