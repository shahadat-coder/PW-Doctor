import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/parse_route.dart';
import 'package:pw_doctor/routes/route_destinations.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/config.dart';

import 'utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.appName,

      //Theme
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,

      //Routes
      getPages: RouteDestinations.pages,
      initialRoute: RouteNames.splash,
    );
  }
}

