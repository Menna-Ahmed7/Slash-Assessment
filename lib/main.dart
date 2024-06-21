import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:slash_task_/components/all_products.dart';
import 'package:slash_task_/components/appBar.dart';
import 'package:slash_task_/components/bottom_nav_bar.dart';
import 'package:slash_task_/components/categories.dart';
import 'package:slash_task_/components/offers.dart';
import 'package:slash_task_/components/searchbar.dart';
import 'package:slash_task_/cubits/navbar_cubit.dart';
import 'package:slash_task_/cubits/navbar_states.dart';
import 'package:slash_task_/views/web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
              child: CustomAppBar(),
              preferredSize: const Size.fromHeight(100),
            ),
            body: BlocBuilder<NavBarCubit, NavBarState>(
              builder: (context, state) {
                if (state is NavBarHomeState)
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
            ),
            bottomNavigationBar: CustomButtomNavBar()),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
      ),
    );
  }
}
