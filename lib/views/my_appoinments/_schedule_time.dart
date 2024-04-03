import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/widget/time_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleTimeScreen extends StatefulWidget {
  const ScheduleTimeScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleTimeScreen> createState() => _ScheduleTimeScreenState();
}

class _ScheduleTimeScreenState extends State<ScheduleTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        title: 'Reschedule Appointment',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Date',
                style: TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15,),
              TableCalendar(
                headerStyle: const HeaderStyle(formatButtonVisible: false),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                calendarStyle: const CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: AppColors.primaryColors,
                      shape: BoxShape.circle,
                    )
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Select Hour',
                style: TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              const Center(child: TimeSelected()),
              const Spacer(),
              CustomButton(title: 'Next', onTap: (){
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
                                'assets/images/scedule.png',
                                height: 200,
                                width: 200,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Rescheduling Success!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.primaryColors,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const DescribeText(
                                title: "Appoinment successfully changed you will receive a notification and the doctor you selected will contact you.",
                              ),
                              const SizedBox(height: 20),
                              CustomButton(title: 'View Appointment', onTap: (){}),
                              const SizedBox(height: 10),
                              CustomButton(title: 'Cancel',backgroundColor: AppColors.primaryColors.withOpacity(0.1),titleColor: AppColors.primaryColors, onTap: (){}),
                            ],
                          ),
                        ),
                      );
                    }
                );
              }),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
