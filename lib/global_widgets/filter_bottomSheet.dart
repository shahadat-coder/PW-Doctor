import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/models/fav_doctor_model.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/home/homeWidget/all_doctors_category.dart';
import 'package:pw_doctor/views/home/homeWidget/rating_category.dart';

import 'option_button.dart';

class FilterButtonsheetWidget extends StatelessWidget {
  const FilterButtonsheetWidget({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Center(
              child: Text(
                    "Filter",
                style:  TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width - 140, // Adjust width as needed
              child: Divider(color: Colors.grey.withOpacity(0.3), height: 2),
            ),
            SizedBox(height: 15,),
            Text(
              'Speciality',
              style: const TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15,),
            DoctorsCategory(),
            SizedBox(height: 15,),
            Text(
              'Rating',
              style: const TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15,),
            RatingCategory(),
            const SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width - 140, // Adjust width as needed
              child: Divider(color: Colors.grey.withOpacity(0.3), height: 2),
            ),
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionButton(
                  title: 'Reset',
                  titleColor: AppColors.primaryColors,
                  onTap: () {},
                  backgroundColor: AppColors.primaryColors.withOpacity(0.1),
                ),
                OptionButton(
                    title: 'Apply',
                    titleColor: AppColors.thirdColors,
                    backgroundColor: AppColors.primaryColors,
                    onTap: () {}
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
