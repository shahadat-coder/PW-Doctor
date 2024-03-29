import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/routes/route_names.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: const CircleAvatar(
          radius: 150,
          backgroundImage: NetworkImage(
              'https://www.realmenrealstyle.com/wp-content/uploads/2023/03/The-Side-Part.jpg'),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescribeText(title: 'Good Morning'),
            SizedBox(height: 3,),
        Text( 'Andrew Ainsley',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600
          )),
          ],
        ),
        actions: [
          InkWell(
            onTap: (){
              Get.toNamed(RouteNames.notification);
            },
              child: Image.asset('assets/images/notification.png',height: 25,width: 25,)),
          const SizedBox(width: 10,),
          InkWell(
            onTap: (){
              Get.toNamed(RouteNames.favouriteDoctor);
            },
              child: Image.asset('assets/images/favourite.png',height: 25,width: 25,)),

        ],
      ),
    );
  }
}
