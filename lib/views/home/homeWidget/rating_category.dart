import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';

class RatingCategory extends StatefulWidget {
  const RatingCategory({Key? key}) : super(key: key);

  @override
  State<RatingCategory> createState() => _RatingCategoryState();
}

class _RatingCategoryState extends State<RatingCategory> {
  List<bool> isSelectedList = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            _buildCategoryContainer('All', 0),
            const SizedBox(width: 10,),
            _buildCategoryContainer('5', 1),
            const SizedBox(width: 10,),
            _buildCategoryContainer('4', 2),
            const SizedBox(width: 10,),
            _buildCategoryContainer('3', 3),
            const SizedBox(width: 10,),
            _buildCategoryContainer('2', 4),
            const SizedBox(width: 10,),
            _buildCategoryContainer('1', 5),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryContainer(String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Update the isSelectedList to toggle the selected state
          isSelectedList[index] = !isSelectedList[index];
        });
      },
      child: Chip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: isSelectedList[index] ? AppColors.primaryColors : AppColors
                .primaryColors,
            width: 1.0,
          ),
        ),
        backgroundColor: isSelectedList[index]
            ? AppColors.primaryColors
            : Colors.white,
        label: Row(
          children: [
            Icon(
              Icons.star,
              size: 15,
              color: isSelectedList[index] ? Colors.white : AppColors
                  .primaryColors,
            ),
            SizedBox(width: 5), // Adjust spacing between icon and text
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: isSelectedList[index] ? Colors.white : AppColors
                    .primaryColors,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
