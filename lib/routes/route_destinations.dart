import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/views/auth/login_screen.dart';
import 'package:pw_doctor/views/onboardings/onboarding_screen.dart';
import 'package:pw_doctor/views/splash_screen.dart';

class RouteDestinations{
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.splash,
        page: ()=> const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.onboarding,
      page: ()=> const OnboardingScreen(),
    ),
    GetPage(
      name: RouteNames.login,
      page: ()=> const LoginScreen(),
    ),
  ];
}