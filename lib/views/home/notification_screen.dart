import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/models/notification_model.dart';
import 'package:pw_doctor/utils/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        title: 'Notification',
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.pending_outlined),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: notification.length,
        itemBuilder: (context, index) {
          final bool isFirstOrSecond = index == 0 || index == 1;
          return ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: notification[index].backgroundColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Icon(
                      notification[index].icon,
                      size: 20,
                      color: notification[index].iconColor,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ("${notification[index].name}"),
                      maxLines: 1, // Ensure text does not exceed one line
                      overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                      style: const TextStyle(
                        wordSpacing: 0.15,
                        fontWeight: FontWeight.w600,
                        fontSize: 15, // Reduced font size
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${notification[index].timeDate}",
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 80),
                if (isFirstOrSecond) // Conditionally add chip for first two items
                  Chip(
                    label: const Text(
                      'New',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: AppColors.primaryColors,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.primaryColors,
                  ),
                SizedBox(height: 60)
              ],
            ),
            subtitle: Text(
              "${notification[index].subtitle}",
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}
