import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key, required this.title, required this.onTap, this.backgroundColor, this.titleColor}) : super(key: key);

  final String title;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(vertical: 12,),
          decoration: BoxDecoration(
            color: widget.backgroundColor ?? AppColors.primaryColors,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Center(
            child: Text(
              widget.title,
              style:  TextStyle(
                color:widget.titleColor ?? AppColors.thirdColors,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),

          ),
        ),
      ),
    );
  }
}