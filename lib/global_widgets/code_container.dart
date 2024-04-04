import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';

class CodeContainer extends StatefulWidget {
  const CodeContainer({
    Key? key,
    required this.title,
    this.subtitle,
    this.sub,
    required this.assetImage,
    this.icon,
    this.backgroundColor,
    this.money,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final String? sub;
  final String? money;
  final Image assetImage;
  final IconButton? icon;
  final Color? backgroundColor;

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
          borderColor = widget.backgroundColor ?? AppColors.primaryColors;
        });
      },
      child: Container(
        height: 100,
        width: 380,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.assetImage,
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DescribeText(title: widget.title!),
                  if (widget.subtitle != null)
                    Text(
                      widget.subtitle!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.money != null)
                    Text(
                      widget.money!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColors.primaryColors,
                      ),
                    ),
                  if (widget.sub != null)
                    Text(
                      widget.sub!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                ],
              ),
              const SizedBox(width: 5),
              if (widget.icon != null) widget.icon!,
            ],
          ),
        ),
      ),
    );
  }
}
