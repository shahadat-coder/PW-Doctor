import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/views/my_appoinments/cancel_screen.dart';
import 'package:pw_doctor/views/my_appoinments/completed_screen.dart';
import 'package:pw_doctor/views/my_appoinments/upcoming_screen.dart';

class MyAppoinmentScreen extends StatefulWidget {
  const MyAppoinmentScreen({super.key});

  @override
  State<MyAppoinmentScreen> createState() => _MyAppoinmentScreenState();
}

class _MyAppoinmentScreenState extends State<MyAppoinmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar:  CustomAppBar(
        isLeading: true,
        title: 'My appoinment',
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: Colors.grey.shade600,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.pending_outlined,color: Colors.grey.shade600,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey.shade100,
          width: double.infinity,
          height: double.infinity,
          child: ContainedTabBarView(
            tabs: const [
              Text('Upcoming'),
              Text('Completed'),
              Text('Cancelled'),
            ],
            views: const [
              UpcomingScreen(),
              CompletedScreen(),
              CancelScreen(),
            ],
            onChange: (index) => print(index),
          ),
        ),
      ),
    );
  }
}
