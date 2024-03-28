import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? isLeading;
  final List<Widget>? actions;
  final ValueChanged<String>? onSearchTextChanged;

  const CustomAppBar({
    Key? key,
    this.title,
    this.isLeading,
    this.actions,
    this.onSearchTextChanged,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: isLeading == true
          ? IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      )
          : null,
      elevation: 0,
      title: Expanded(
        child: Text(
          title ?? '',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      actions: actions ?? [],
    );
  }
}
