import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({Key? key, required this.title, required this.onTap, this.backgroundColor, this.titleColor,  this.image}) : super(key: key);

  final String title;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? titleColor;
  final Image? image;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 70,
          width: size.width,
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: AppColors.thirdColors,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey,width: 0.2)
          ),
          child:  Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.image!,
                const SizedBox(width: 5,),
                Text(
                  widget.title,
                  style:   TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}