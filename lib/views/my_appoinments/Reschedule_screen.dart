import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'widgets/reasonText.dart';

class RescheduleScreen extends StatefulWidget {
  const RescheduleScreen({Key? key}) : super(key: key);

  @override
  State<RescheduleScreen> createState() => _RescheduleScreenState();
}

class _RescheduleScreenState extends State<RescheduleScreen> {
  int _selectedReason = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reschedule Appointment"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text('Reason for Schedule Change'),
          ),
          const SizedBox(height: 10),
          ReasonText(
            title: "I'm having a schedule clash",
            value: 1,
            groupValue: _selectedReason,
            onChanged: (value) {
              setState(() {
                _selectedReason = value;
              });
            },
          ),
          const SizedBox(height: 10),
          ReasonText(
            title: "I'm not available on schedule",
            value: 2,
            groupValue: _selectedReason,
            onChanged: (value) {
              setState(() {
                _selectedReason = value;
              });
            },
          ),
          const SizedBox(height: 10),
          ReasonText(
            title: "I have an activity that can't be left behind",
            value: 3,
            groupValue: _selectedReason,
            onChanged: (value) {
              setState(() {
                _selectedReason = value;
              });
            },
          ),
          const SizedBox(height: 10),
          ReasonText(
            title: "I don't want to tell",
            value: 4,
            groupValue: _selectedReason,
            onChanged: (value) {
              setState(() {
                _selectedReason = value;
              });
            },
          ),
          const SizedBox(height: 10),
          ReasonText(
            title: 'Others',
            value: 5,
            groupValue: _selectedReason,
            onChanged: (value) {
              setState(() {
                _selectedReason = value;
              });
            },
          ),
          const SizedBox(height: 25),
          TextFieldWidget(
            fillColor: Colors.grey.shade50,
            hintColor: Colors.black45,
            maxLines: 7,
          ),
          const Spacer(),
    CustomButton(title: 'Next', onTap: (){
      Get.toNamed(RouteNames.scheduleTime);
    }),
    const SizedBox(height: 15,),
    ]
      ),
    );
  }
}
