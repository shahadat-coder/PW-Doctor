import 'package:flutter/material.dart';

class NotificationModel {
  String? name;
  String? timeDate;
  String? subtitle;
  final Color backgroundColor; // Remove the required keyword
  final Color iconColor; // Remove the required keyword
  final IconData icon;

  NotificationModel({
    required this.name,
    required this.timeDate,
    required this.subtitle,
    required this.icon,
    required this.backgroundColor, // Remove the required keyword
    required this.iconColor, // Remove the required keyword
  });
}

final List<NotificationModel> notification = [
  NotificationModel(
    name: "Appointment Cancelled",
     timeDate: 'Today | 15:36 PM',
    subtitle:
    'You have successfully canceled your appointment with Dr. Alan Watson on December 24,2024,13:00 p.m 80% of the funds will be returned to your account.',
    icon: Icons.cancel_presentation_sharp,
    backgroundColor: Colors.red.shade100, // Provide background color for this item
    iconColor: Colors.red,
  ),
  NotificationModel(
    name: "Schedule Changed",
    timeDate: 'Yesterday | 04:36 PM',
    subtitle:
    'You have successfully canceled your appointment with Dr. Alan Watson on December 24,2024,13:00 p.m 80% of the funds will be returned to your account.',
    icon: Icons.calendar_month,
    backgroundColor: Colors.green.shade100, // Provide background color for this item
    iconColor: Colors.green,
  ),
  NotificationModel(
    name: "Appointment Success!",
    timeDate: '2,Des,24 | 08:36 PM',
    subtitle:
    'You have successfully canceled your appointment with Dr. Alan Watson on December 24,2024,13:00 p.m 80% of the funds will be returned to your account.',
    icon: Icons.calendar_month,
    backgroundColor: Colors.blue.shade100, // Provide background color for this item
    iconColor: Colors.blue,
  ),
  NotificationModel(
    name: "New Services Available",
    timeDate: '12,Mar,24 | 12:36 AM',
    subtitle:
    'You have successfully canceled your appointment with Dr. Alan Watson on December 24,2024,13:00 p.m 80% of the funds will be returned to your account.',
    icon: Icons.mobile_screen_share,
    backgroundColor: Colors.orange.shade100, // Provide background color for this item
    iconColor: Colors.orange,
  ),
  NotificationModel(
    name: "Credit Card Connected",
    timeDate: '21,Jan,24 | 07:36 PM',
    subtitle:
    'You have successfully canceled your appointment with Dr. Alan Watson on December 24,2024,13:00 p.m 80% of the funds will be returned to your account.',
    icon: Icons.credit_card,
    backgroundColor: Colors.purple.shade100, // Provide background color for this item
    iconColor: Colors.purple,
  ),
];
