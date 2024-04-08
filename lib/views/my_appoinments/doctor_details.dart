import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/code_container.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/widget/card_widget.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'My Appoinment',
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.pending_outlined),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15,),
          const CardWidget(
            image: 'https://media.istockphoto.com/id/1470505351/photo/portrait-of-a-smiling-doctor-holding-glasses-and-a-mobile-phone-at-the-office.webp?b=1&s=170667a&w=0&k=20&c=8CebFLF4PFnt9JYJznGhYoOQxcyHLVpTGVfkvEsZd2Q=',
            name: 'Dr. Travis Westaby',
            trade: 'Immunologists',
            hospital: 'The Volley Hospital in California US',
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Scheduled Appointment",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: bodyMedium(context, 'Today December 22, 2022'),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: bodyMedium(context, '16.00 - 16.30 PM (30 minutes)'),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Patient information",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bodyMedium(context, 'Full Name\t\t\t\t\t\t: Andrew Ainsley'),
                const SizedBox(height: 8,),
                bodyMedium(context, 'Gender\t\t\t\t\t\t\t\t\t\t\t: male'),
                const SizedBox(height: 8,),
                bodyMedium(context, 'Age\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t: 27'),
                const SizedBox(height: 8,),
                bodyMedium(context, "Problem\t\t\t\t\t\t\t\t\t\t: your body doesn't make enough insulin or\n"
                                                              "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcan't use it as well as it should. When there\n"
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t isn't enough insulin or cells stop responding."
                ),
              ],
            )
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Your Package",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 15,),
           Center(
             child: CodeContainer(title: 'Messaging',
                 assetImage: Image.asset('assets/images/via sms.png'),
               subtitle: 'chat messaging with doctor',
               money: '\$20',
               sub: '(paid)',
             ),
           ),
          const Spacer(),
          CustomButton(title: 'Message', onTap: (){
            Get.toNamed(RouteNames.messageScreen);
          }),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
