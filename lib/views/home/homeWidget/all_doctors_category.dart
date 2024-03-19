import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class DoctorsCategory extends StatefulWidget {
  const DoctorsCategory({Key? key}) : super(key: key);

  @override
  State<DoctorsCategory> createState() => _DoctorsCategoryState();
}

class _DoctorsCategoryState extends State<DoctorsCategory> {
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
            _buildCategoryContainer('General', 1),
            const SizedBox(width: 10,),
            _buildCategoryContainer('Dentist', 2),
            const SizedBox(width: 10,),
            _buildCategoryContainer('Ophthalmic', 3),
            const SizedBox(width: 10,),
            _buildCategoryContainer('Nutrition', 4),
            const SizedBox(width: 10,),
            _buildCategoryContainer('Neurology', 5),
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
            color: isSelectedList[index] ? AppColors.primaryColors : AppColors.primaryColors,
            width: 1.0,
          ),
        ),
        backgroundColor: isSelectedList[index] ? AppColors.primaryColors : Colors.white,
        label: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: isSelectedList[index] ? Colors.white : AppColors.primaryColors,
          ),
        ),
      ),
    );
  }
}
