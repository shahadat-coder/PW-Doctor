import 'package:flutter/material.dart';

class DescribeText extends StatelessWidget {
  const DescribeText({
    super.key, required this.title, this.color,
  });
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 15,
        fontWeight: FontWeight.bold
      ),
    );
  }
}