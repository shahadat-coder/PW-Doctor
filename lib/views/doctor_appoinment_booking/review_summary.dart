import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/widget/card_widget.dart';
import 'widget/review_summary_widget/contract_card.dart';
import 'widget/review_summary_widget/package_card.dart';

class ReviewSummaryScreen extends StatefulWidget {
  const ReviewSummaryScreen({super.key});

  @override
  State<ReviewSummaryScreen> createState() => _ReviewSummaryScreenState();
}

class _ReviewSummaryScreenState extends State<ReviewSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Review Summary',
      ),
      body:  Column(
        children: [
          const SizedBox(height: 15),
          const CardWidget(),
          const SizedBox(height: 15),
          const ContactCard(),
          const SizedBox(height: 10,),
          const PackageCard(),
          const SizedBox(height: 15),
          Card(
            elevation: 0,
            semanticContainer: true,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ), // Corrected comma placement here
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icons8-paypal-48.png',height: 40,width: 40,),
                      const SizedBox(width: 10,),
                      const Text(
                        '.... .... .... 4567',
                        style: TextStyle(
                          wordSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 70,),
                      const Text(
                        'Change',
                        style: TextStyle(
                          wordSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors.primaryColors,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
             CustomButton(title: 'Next', onTap: (){
             Get.toNamed(RouteNames.enterPin);
             }),
          const SizedBox(height: 15,)
        ],
      ),
    );
  }
}




