import 'package:flutter/material.dart';
import 'package:pw_doctor/models/book_appoinment_all/time_model.dart';
import 'package:pw_doctor/utils/colors.dart';

class TimeSelected extends StatefulWidget {
  const TimeSelected({Key? key}) : super(key: key);

  @override
  State<TimeSelected> createState() => _TimeSelectedState();
}

class _TimeSelectedState extends State<TimeSelected> {
  late List<bool> isSelectedList; // Declare isSelectedList as a state variable

  @override
  void initState() {
    super.initState();
    isSelectedList = List.generate(timeModel.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap( // Use Wrap instead of GridView for wrapping chips in a row
      children: List.generate(timeModel.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelectedList[index] = !isSelectedList[index];
              });
            },
            child: Chip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelectedList[index]
                      ? AppColors.primaryColors
                      : AppColors.primaryColors,
                  width: 3.0,
                ),
              ),
              backgroundColor: isSelectedList[index]
                  ? AppColors.primaryColors
                  : Colors.white,
              label: Text(
                "${timeModel[index].title}",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: isSelectedList[index]
                      ? Colors.white
                      : AppColors.primaryColors,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
