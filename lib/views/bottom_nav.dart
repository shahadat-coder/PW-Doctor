import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/history/history_screen.dart';
import 'package:pw_doctor/views/home/home_page.dart';
import 'package:pw_doctor/views/my_appoinments/my_appoinments.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {
  int selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    MyAppoinmentScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryColors,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, size: 25),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste_outlined),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}