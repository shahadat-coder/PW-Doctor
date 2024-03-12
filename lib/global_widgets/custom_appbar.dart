import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool? isLeading;
  final List<Widget>? actions;
  const CustomAppBar({super.key,  this.title,  this.isLeading,this.actions});
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: isLeading == true? IconButton(onPressed: (){
        Get.back();
      }, icon: const Icon(Icons.arrow_back,color: Colors.black,)) : null,
      elevation: 0,
      title: Text(title ?? '',
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      actions: actions ?? [],
    );
  }
}