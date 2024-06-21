import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButtomNavBar extends StatefulWidget {
  const CustomButtomNavBar({super.key});

  @override
  State<CustomButtomNavBar> createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.black,
      showUnselectedLabels: true,
      unselectedItemColor: Color.fromARGB(255, 86, 86, 86),
      selectedFontSize: 16,
      unselectedFontSize: 16,
      elevation: 0,
      // type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.heart,
          ),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.cartShopping,
          ),
          label: "My Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.user,
          ),
          label: "Profile",
        )
      ],
    );
  }
}
