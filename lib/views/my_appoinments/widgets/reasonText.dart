import 'package:flutter/material.dart';

class ReasonText extends StatefulWidget {
  const ReasonText({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final int value;

  @override
  _ReasonTextState createState() => _ReasonTextState();
}

class _ReasonTextState extends State<ReasonText> {
  late int _groupValue;

  @override
  void initState() {
    super.initState();
    _groupValue = widget.value; // Initialize groupValue with the widget's value
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Radio(
          value: widget.value,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value as int;
            });
          },
        ),
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
