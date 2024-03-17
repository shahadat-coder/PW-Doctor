import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class OptionButton extends StatefulWidget {
  const OptionButton({
    super.key, required this.title, required this.onTap, this.backgroundColor, this.titleColor,
  });
  final String title;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? titleColor;
  @override
  State<OptionButton> createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 55,
        width: 170,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(widget.title,
            style: TextStyle(
              color: widget.titleColor,
              fontWeight: FontWeight.w800,
              fontSize: 15,
            ),),
        ),
      ),
    );
  }
}