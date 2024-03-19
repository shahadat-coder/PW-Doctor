import 'package:flutter/material.dart';
import 'package:pw_doctor/models/doctor_speciality_model.dart'; // Assuming `carts` is defined in this file
import 'package:pw_doctor/utils/colors.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Reduced height of the container
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: carts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5), // Adjusted padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColors.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Image.asset(carts[index].UrlImage,height: 50,width: 50,),
                  ),
                ),
                SizedBox(height: 5), // Added SizedBox for spacing
                Text(
                  ("${carts[index].name}"),
                  maxLines: 1, // Ensure text does not exceed one line
                  overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                  style: const TextStyle(
                    wordSpacing: 0.15,
                    fontWeight: FontWeight.w600,
                    fontSize: 15, // Reduced font size
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
