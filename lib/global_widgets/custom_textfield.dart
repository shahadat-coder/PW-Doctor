import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class TextFieldWidget extends StatefulWidget {
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final String? hintText;
  final Color hintColor;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final Color? fillColor;
  final int? maxLines;// New parameter for maxLines
   // New parameter for maxLines

  TextFieldWidget({
    Key? key,
    this.prefixIcon,
    this.prefixIconColor,
    this.suffixIcon,
    this.suffixIconColor,
    this.hintText,
    required this.hintColor,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.fillColor,
    this.maxLines, // Initialize the new parameter
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            controller: widget.controller,
            maxLines: widget.maxLines, // Set maxLines
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon != null
                  ? Icon(widget.prefixIcon, color: widget.prefixIconColor)
                  : null,
              suffixIcon: widget.suffixIcon != null
                  ? Icon(widget.suffixIcon, color: widget.suffixIconColor)
                  : null,
              hintText: widget.hintText,
              hintStyle: TextStyle(color: widget.hintColor),
              filled: true,
              fillColor: widget.fillColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: AppColors.primaryColors.withOpacity(0.7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
