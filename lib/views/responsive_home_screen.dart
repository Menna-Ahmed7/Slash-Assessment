import 'package:flutter/material.dart';
import 'package:slash_task_/components/all_products.dart';
import 'package:slash_task_/components/bottom_nav_bar.dart';
import 'package:slash_task_/components/categories.dart';
import 'package:slash_task_/components/offers.dart';
import 'package:slash_task_/components/searchbar.dart';
import 'package:slash_task_/cubits/navbar_cubit.dart';
import 'package:slash_task_/cubits/navbar_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResponsiveHomeScreen extends StatelessWidget {
  const ResponsiveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        if (state is NavBarHomeState || state is NavBarInitialState)
          return Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.06,
            ),
            child: ListView(
              children: const [
                CustomSearchBar(),
                Offers(),
                Categories(),
                ProductsDisplay(),
              ],
            ),
          );
        else
          return ListView(
            children: [],
          );
      },
    );
  }
}
