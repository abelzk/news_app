import 'package:flutter/material.dart';
import 'bello_icons.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color.fromARGB(255, 173, 173, 173),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              BelloIcons.home_rounded96,
              size: 26.5,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              BelloIcons.fi_rr_search,
              size: 22,
            ),
            label: ''),
        BottomNavigationBarItem(icon: Icon(BelloIcons.bookmarkskk), label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              BelloIcons.user,
            ),
            label: ''),
      ],
    );
  }
}
