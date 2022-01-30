import 'package:flutter/material.dart';
import 'package:omeoo_martino/pages/home/home_page.dart';
import 'package:omeoo_martino/pages/home/profile_page.dart';
import 'package:omeoo_martino/themes.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: backgroundColor4,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home_icon.png',
              width: 21,
              color: currentIndex == 0 ? primaryColor : Color(0xffffffff),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile_icon.png',
              width: 21,
              color: currentIndex == 1 ? primaryColor : Color(0xffffffff),
            ),
            label: '',
          ),
          
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
