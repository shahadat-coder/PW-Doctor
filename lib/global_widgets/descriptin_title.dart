import 'package:flutter/material.dart';

class DescribeText extends StatelessWidget {
  const DescribeText({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black.withOpacity(0.8),
        fontSize: 15,
      ),
    );
  }
}