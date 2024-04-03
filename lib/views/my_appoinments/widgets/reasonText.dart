import 'package:flutter/material.dart';

class ReasonText extends StatefulWidget {
  const ReasonText({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final int value;
  final int groupValue;
  final ValueChanged<int>? onChanged;

  @override
  _ReasonTextState createState() => _ReasonTextState();
}

class _ReasonTextState extends State<ReasonText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Radio<int>(
          value: widget.value,
          groupValue: widget.groupValue,
          onChanged: (value) {
            widget.onChanged?.call(value!);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
