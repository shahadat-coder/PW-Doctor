import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/widget/time_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Book Appointment',
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
              const SizedBox(height: 20,),
              CustomButton(title: 'Next', onTap: (){})
            ],
          ),
        ),
      ),
    );
  }
}
