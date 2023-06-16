import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalhealth/screens/home_screen.dart';
import 'package:medicalhealth/screens/videos.dart';

import 'bottem_bar.dart';

class BottemNavigationBar extends StatefulWidget {
  const BottemNavigationBar({super.key});

  @override
  State<BottemNavigationBar> createState() => _BottemNavigationBarState();
}

class _BottemNavigationBarState extends State<BottemNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const PlayVideos(),
    const Center(
      child: Icon(
        Icons.camera,
        size: 59,
      ),
    ),
    const Center(
      child: Icon(
        Icons.chat,
        size: 150,
      ),
    ),
    const Center(
      child: Icon(
        Icons.chat,
        size: 150,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: _bottemNavigationBAr(),
    );
  }

  _bottemNavigationBAr() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 24,
          ),
          label: 'Home',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.ondemand_video_sharp,
            size: 24,
          ),
          label: 'Videos',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.paste,
            size: 24,
          ),
          label: 'Library',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_2_rounded,
            size: 24,
          ),
          label: 'Profile',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            size: 24,
          ),
          label: 'Settings',
          backgroundColor: Colors.black,
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue.shade900,
      showSelectedLabels: true,
      unselectedItemColor: Colors.black,
      iconSize: 40,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }
}
