import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(RouteNames.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Image.asset('assets/images/logo.png'),
           const SizedBox(height: 300,),
           const CircularProgressIndicator(color: AppColors.primaryColors,),
           const SizedBox(height: 16),
           const Text('Version 1.0.0'),
           const SizedBox(height: 16)
         ],
       ),
     ),
    );
  }
}
