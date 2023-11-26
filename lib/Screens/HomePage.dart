// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lava/Screens/BookingPage.dart';
import 'package:lava/Screens/HomeActionPage.dart';
import 'package:lava/Screens/OthersPage.dart';
import 'package:lava/Screens/StorePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int currentIndex = 0;
List<Widget> screens = [
  HomeAction(),
  BookingPage(),
  StorePage(),
  OthersPage(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: GNav(
        gap: 3,
        selectedIndex: currentIndex,
        activeColor: Color(0xff0190F9),
        onTabChange: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.calendar_month,
            text: 'Booking',
          ),
          GButton(
            icon: Icons.store,
            text: 'Store',
          ),
          GButton(
            icon: Icons.mode_comment,
            text: 'Othes',
          ),
        ],
      ),
    );
  }
}
