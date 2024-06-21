import 'package:flutter/material.dart';
import 'package:slash_task_/components/products_list_view.dart';
import 'package:slash_task_/models/product_info.dart';
import 'package:slash_task_/services/homepage_services.dart';

class ProductsDisplay extends StatelessWidget {
  const ProductsDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductInfo> bestSellings = getBestSelling();
    final List<ProductInfo> newArrivals = getNewArrival();
    final List<ProductInfo> recommended = getRecommendedForYou();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductsListView(productsinfo: bestSellings, title: "Best Selling"),
        ProductsListView(productsinfo: newArrivals, title: "New Arrival"),
        ProductsListView(
            productsinfo: recommended, title: "Recommended for you")
      ],
    );
  }
}
