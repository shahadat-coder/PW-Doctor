import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';

class CodeContainer extends StatefulWidget {
  const CodeContainer({Key? key,required this.title, required this.subtitle, required this.assetImage});
  final String title;
  final String subtitle;
  final Image assetImage;

  @override
  State<CodeContainer> createState() => _CodeContainerState();
}

class _CodeContainerState extends State<CodeContainer> {
  Color borderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          borderColor = AppColors.primaryColors;
        });
      },
      child: Container(
        height: 100,
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor ),
            borderRadius: BorderRadius.circular(30)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.assetImage,
              const SizedBox(width: 15,),
              Column(
                children: [
                  DescribeText(title: widget.title ),
                  Text(
                    widget.subtitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        color: Colors.black
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
