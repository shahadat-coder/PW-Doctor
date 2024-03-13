import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/utils/colors.dart';

class RememberWidget extends StatelessWidget {
  const RememberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.check_box_outline_blank_rounded, color: AppColors.primaryColors,),
        SizedBox(width: 5,),
        bodyMedium(context, 'Remember me'),
      ],
    );
  }
}