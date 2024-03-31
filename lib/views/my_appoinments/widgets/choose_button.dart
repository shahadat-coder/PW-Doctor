import 'package:flutter/material.dart';

class ChooseButton extends StatefulWidget {
  const ChooseButton({
    super.key, required this.title, required this.onTap, this.backgroundColor, this.titleColor, this.borderColor,
  });
  final String title;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? titleColor;
  @override
  State<ChooseButton> createState() => _ChooseButtonState();
}

class _ChooseButtonState extends State<ChooseButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 30,
        width: 112,
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: widget.borderColor ?? Colors.transparent,
              width: 2,
            )
        ),
        child: Center(
          child: Text(widget.title,
            style: TextStyle(
              color: widget.titleColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),),
        ),
      ),
    );
  }
}