import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/views/history/message/message_screen.dart';
import 'package:pw_doctor/views/history/video_call/video_screen.dart';
import 'package:pw_doctor/views/history/voice_call/voice_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: CustomAppBar(
        title: 'History',
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
              Text('Message'),
              Text('Voice Call'),
              Text('Video Call'),
            ],
            views: const [
              MessageScreen(),
              VoiceScreen(),
              VideoScreen(),
            ],
            onChange: (index) => print(index),
          ),
        ),
      ),
    );
  }
}
