import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';

import 'widgets/reasonText.dart';

class RescheduleScreen extends StatefulWidget {
  const RescheduleScreen({super.key});

  @override
  State<RescheduleScreen> createState() => _RescheduleScreenState();
}

class _RescheduleScreenState extends State<RescheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: "Reschedule Appointment",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          labelLarge(context,'Reason for Schedule Change'),
          const SizedBox(height: 10,),
          const ReasonText(title: "I'm having a schedule clash", value: 1,),
          const SizedBox(height: 10,),
          const ReasonText(title: "I'm not available on schedule", value: 2,),
          const SizedBox(height: 10,),
          const ReasonText(title: "I have a activity that can't be left behind", value: 3,),
          const SizedBox(height: 10,),
          const ReasonText(title: "I don't want to tell", value: 4,),
          const SizedBox(height: 10,),
          const ReasonText(title: 'Others', value: 5,),
          const SizedBox(height: 15,),
          TextFieldWidget(
            fillColor: Colors.grey.shade50,
            hintColor: Colors.black45,
            maxLines: 7,
          ),
          const Spacer(),
          CustomButton(title: 'Next', onTap: (){}),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }
}


