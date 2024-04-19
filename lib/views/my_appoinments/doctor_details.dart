import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/code_container.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/models/my_appoinment_model/upcoming_model.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/widget/card_widget.dart';
import 'package:pw_doctor/views/my_appoinments/message/message_screen.dart';

class DoctorDetails extends StatelessWidget {
  final UpcomingModel doctor;
  const DoctorDetails({super.key, required this.doctor,});
  @override
  Widget build(BuildContext context) {
    String imageUrl = doctor.UrlImage;
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

           CardWidget(
             image: imageUrl,
            name: ("${doctor.name}"),
            trade: '${doctor.trade}',
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
                bodyMedium(context, 'Full Name\t\t\t\t\t\t: ${doctor.name}'),
                const SizedBox(height: 8,),
                bodyMedium(context, 'Gender\t\t\t\t\t\t\t\t\t\t\t: ${doctor.gender}'),
                const SizedBox(height: 8,),
                bodyMedium(context, 'Age\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t: ${doctor.age}'),
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
             child: CodeContainer(
               title: 'Messaging',
               assetImage: Image.asset(doctor.AssetImage),
               subtitle: 'chat messaging with doctor',
               money: '${doctor.doller}',
               sub: '(paid)',
             ),
           ),
          const Spacer(),
      CustomButton(title: '${doctor.communicate}', onTap: (){
        if (doctor.communicate == 'Messaging') {
          Get.to(const MessageScreen());
        } else if (doctor.communicate == 'Audio Call') {
          // Get.toNamed(RouteNames.videoCall);
        } else if (doctor.communicate == 'Video Call') {
          // Get.toNamed(RouteNames.videoCallScreen);
        }
      }),

      const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
