import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';

class ArivableRow extends StatelessWidget {
  const ArivableRow({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: onTap,
            child: const DescribeText(
              title: 'See All',
              color: AppColors.primaryColors,
            ),
          )
        ],
      ),
    );
  }
}
