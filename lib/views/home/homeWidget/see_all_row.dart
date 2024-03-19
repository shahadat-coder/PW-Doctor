import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';

class ArivableRow extends StatelessWidget {
  const ArivableRow({
    super.key, required this.title,
  });
final String title;
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
                  fontSize: 20,
                  color: Colors.black,

                ),
              ),

            ],
          ),
          InkWell(
            onTap: () {},
            child:
                const DescribeText(title: 'See All',color: AppColors.primaryColors,),
          )
        ],
      ),
    );
  }
}