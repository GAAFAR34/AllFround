import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../../constants.dart';
import 'package:shop_app/screens/serv_home/home_screen.dart';
import 'package:shop_app/screens/stats_home/stats_screen.dart';
import 'package:shop_app/screens/chat/chat.dart';

import 'Ser_chat/chat.dart';
import 'Ser_profile/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  static String routeName = "/Service_provider";

  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    ServHomeScreen(),
    StatsScreen(),
    ServChatScreen(), // connect chat icon to ChatScreen class
    ServProfileScreen(), // connect person icon to ProfileScreen class
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [Icons.home, Icons.insert_chart, Icons.chat, Icons.person]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,

                      ),
                      decoration: BoxDecoration(
                        color: _currentIndex == key
                            ? Color(0xFFFF7643)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Icon(value),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}