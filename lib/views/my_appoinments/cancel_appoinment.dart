import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/my_appoinments/widgets/reasonText.dart';

class CancelAppointment extends StatefulWidget {
  const CancelAppointment({Key? key}) : super(key: key);

  @override
  State<CancelAppointment> createState() => _CancelAppointmentState();
}

class _CancelAppointmentState extends State<CancelAppointment> {
  int _selectedReason = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        title: 'Cancel Appointment',
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
          CustomButton(
            title: 'Submit',
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.transparent,
                    content: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/right.png',
                            height: 200,
                            width: 200,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Cancel Appointment\nSuccess!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.primaryColors,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const DescribeText(
                            title:
                            "We are very sad that you have canceled your appointment. We will always improve our service to satisfy you in the next appointment.",
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            title: 'OK',
                            onTap: () {},
                          ),

                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
