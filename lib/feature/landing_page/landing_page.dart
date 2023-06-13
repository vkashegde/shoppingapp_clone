import 'package:flutter/material.dart';
import 'package:myntra_clone/feature/categories/categories_page.dart';
import 'package:myntra_clone/feature/homepage/home_page.dart';
import 'package:myntra_clone/feature/profile/profile_page.dart';
import 'package:myntra_clone/foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [HomePage(), CategoriesPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: const Color(0xfffe416c),
          selectedLabelStyle: const TextStyle(fontSize: 13),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SPIcon(
                  assetName: "logo-black.png",
                  currentIndex: currentIndex,
                  index: 0,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SPIcon(
                  assetName: "categories.png",
                  currentIndex: currentIndex,
                  index: 1,
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: SPIcon(
                  assetName: "profile.png",
                  currentIndex: currentIndex,
                  index: 2,
                ),
                label: 'Profile'),
          ]),
      body: pages[currentIndex],
    );
  }
}
