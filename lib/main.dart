import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task_/components/appBar.dart';
import 'package:slash_task_/components/bottom_nav_bar.dart';
import 'package:slash_task_/cubits/navbar_cubit.dart';
import 'package:slash_task_/views/responsive_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: CustomAppBar(),
            ),
            body: ResponsiveHomeScreen(),
            bottomNavigationBar: CustomButtomNavBar()),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
      ),
    );
  }
}
