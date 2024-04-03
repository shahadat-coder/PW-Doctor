import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/option_button.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';



class CancelButtonsheetWidget extends StatelessWidget {
  const CancelButtonsheetWidget({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Center(
              child: Text(
                "Cancel Appointment",
                style:  TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width - 140, // Adjust width as needed
              child: Divider(color: Colors.grey.withOpacity(0.3), height: 2),
            ),
            SizedBox(height: 15,),
            Text(
              textAlign: TextAlign.center,
              'Are you sure you want to cancel your\n appoinment?',
              style: const TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              textAlign: TextAlign.center,
              'only 50% of the funds will be returned to your\n account',
              style: const TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 15,),

            Container(
              width: MediaQuery.of(context).size.width - 140, // Adjust width as needed
              child: Divider(color: Colors.grey.withOpacity(0.3), height: 2),
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionButton(
                  title: 'Back',
                  titleColor: AppColors.primaryColors,
                  onTap: () {},
                  backgroundColor: AppColors.primaryColors.withOpacity(0.1),
                ),
                OptionButton(
                    title: 'Yes, Cancel',
                    titleColor: AppColors.thirdColors,
                    backgroundColor: AppColors.primaryColors,
                    onTap: () {
                      Get.toNamed(RouteNames.cancelSchedule);
                    }
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
