import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:slash_task_/models/product_info.dart';

Future<Map<String, dynamic>> getData() async {
  final dummyData =
      jsonDecode(await rootBundle.loadString("assets/dummydata.json"));
  return dummyData;
}

Future<List<ProductInfo>> getBestSelling() async {
  try {
    Map mymap = await getData();
    List<dynamic> bestSelling = mymap["bestSelling"];
    if (bestSelling.isNotEmpty) {
      return bestSelling
          .map((item) => ProductInfo(
              id: item["id"].toString(),
              name: item["name"].toString(),
              imagepath: item["image"].toString(),
              price: item["price"].toString()))
          .toList();
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}

Future<List<ProductInfo>> getNewArrival() async {
  try {
    Map mymap = await getData();
    List<dynamic> newArrival = mymap["newArrival"];

    if (newArrival.isNotEmpty) {
      return newArrival
          .map((item) => ProductInfo(
              id: item["id"].toString(),
              name: item["name"].toString(),
              imagepath: item["image"].toString(),
              price: item["price"].toString()))
          .toList();
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}

Future<List<ProductInfo>> getRecommendedForYou() async {
  try {
    getData();
    Map mymap = await getData();
    List<dynamic> recommended = mymap["recommendedForYou"];
    if (recommended.isNotEmpty) {
      return recommended
          .map((item) => ProductInfo(
              id: item["id"].toString(),
              name: item["name"].toString(),
              imagepath: item["image"].toString(),
              price: item["price"].toString()))
          .toList();
    } else {
      return [];
    }
  } catch (e) {
    return [];
  }
}
