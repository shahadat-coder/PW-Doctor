import 'package:flutter/material.dart';
import 'package:pw_doctor/models/book_appoinment_all/cart_row.dart';
import 'package:pw_doctor/utils/colors.dart';

class ItemCircleRow extends StatefulWidget {
  const ItemCircleRow({super.key});

  @override
  State<ItemCircleRow> createState() => _ItemCircleRowState();
}

class _ItemCircleRowState extends State<ItemCircleRow> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: cartCircle.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5), // Adjusted padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 15),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColors.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Icon(cartCircle[index].iconData,size: 20,color: AppColors.primaryColors,),
                  ),
                ),
              ),
              const SizedBox(height: 5), // Added SizedBox for spacing
              Text(
                ("${cartCircle[index].title}"),
                maxLines: 1, // Ensure text does not exceed one line
                overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                style: const TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 17, // Reduced font size
                  color: AppColors.primaryColors,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                ("${cartCircle[index].subtitle}"),
                maxLines: 1, // Ensure text does not exceed one line
                overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                style: const TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w400,
                  fontSize: 15, // Reduced font size
                  color: Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
