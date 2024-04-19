import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/views/auth/finger_screen.dart';
import 'package:pw_doctor/views/auth/login_screen.dart';
import 'package:pw_doctor/views/auth/loginmathods_screen.dart';
import 'package:pw_doctor/views/auth/pin_screen.dart';
import 'package:pw_doctor/views/auth/signup_screen.dart';
import 'package:pw_doctor/views/auth/fill_profile_screen.dart';
import 'package:pw_doctor/views/bottom_nav.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/add_Card.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/book_appoinment.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/doctor_profile.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/enter_your_pin.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/patient_Details.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/pyments_screen.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/review_summary.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/select_pakage.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/widget/review_screen.dart';
import 'package:pw_doctor/views/forgot_pass/forgot_password.dart';
import 'package:pw_doctor/views/forgot_pass/new_password/new_password.dart';
import 'package:pw_doctor/views/home/top_doctor/top_doctor_screen.dart';
import 'package:pw_doctor/views/home/home_page.dart';
import 'package:pw_doctor/views/home/my_favourite_doctor_list.dart';
import 'package:pw_doctor/views/home/notification_screen.dart';
import 'package:pw_doctor/views/my_appoinments/Reschedule_screen.dart';
import 'package:pw_doctor/views/my_appoinments/_schedule_time.dart';
import 'package:pw_doctor/views/my_appoinments/cancel_appoinment.dart';
import 'package:pw_doctor/views/my_appoinments/message/message_screen.dart';
import 'package:pw_doctor/views/my_appoinments/video_call.dart';
import 'package:pw_doctor/views/onboardings/onboarding_screen.dart';
import 'package:pw_doctor/views/otp_verification/otp_verification.dart';
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
      name: RouteNames.loginmethods,
      page: ()=> const LoginMethodsScreen(),
    ),
    GetPage(
      name: RouteNames.signup,
      page: ()=> const SignUpScreen(),
    ),
    GetPage(
      name: RouteNames.login,
      page: ()=> const LoginScreen(),
    ),
    GetPage(
      name: RouteNames.fillProfile,
      page: ()=> const FillYourProfileScreen(),
    ),
    GetPage(
      name: RouteNames.createPin,
      page: ()=> const CreatePinScreen(),
    ),
    GetPage(
      name: RouteNames.createFinger,
      page: ()=> const FingerScreen(),
    ),
    GetPage(
      name: RouteNames.forgotPass,
      page: ()=> const ForgotPasswordScreen(),
    ),
    GetPage(
      name: RouteNames.otpVerified,
      page: ()=> const OtpVerificationScreen(),
    ),
    GetPage(
      name: RouteNames.newCreatePass,
      page: ()=> const CreateNewPasswordScreen(),
    ),
    GetPage(
      name: RouteNames.homePage,
      page: ()=> const HomeScreen(),
    ),
    GetPage(
      name: RouteNames.navBar,
      page: ()=> const BottomNavBaseScreen(),
    ),
    GetPage(
      name: RouteNames.notification,
      page: ()=> const NotificationScreen(),
    ),
    GetPage(
      name: RouteNames.favouriteDoctor,
      page: ()=> const MyFavouriteDoctorScreen(),
    ),
    GetPage(
      name: RouteNames.topDoctor,
      page: ()=> const TopDoctorScreen(),
    ),
    GetPage(
      name: RouteNames.doctorProfile,
      page: ()=>  const DoctorProfileScreen(),
    ),
    GetPage(
      name: RouteNames.reviewScreen,
      page: ()=>  const ReviewScreen(),
    ),
    GetPage(
      name: RouteNames.bookAppointment,
      page: ()=>  const BookAppointmentScreen(),
    ),
    GetPage(
      name: RouteNames.selectPakage,
      page: ()=>  const SelectPackageScreen(),
    ),
    GetPage(
      name: RouteNames.patientDetails,
      page: ()=>  const PatientDetailsScreen(),
    ),
    GetPage(
      name: RouteNames.paymentsScreen,
      page: ()=>  const PaymentScreen(),
    ),
    GetPage(
      name: RouteNames.addCard,
      page: ()=>  const AddCardScreen(),
    ),
    GetPage(
      name: RouteNames.reviewSummary,
      page: ()=>  const ReviewSummaryScreen(),
    ),
    GetPage(
      name: RouteNames.enterPin,
      page: ()=>  const EnterYourPinScreen(),
    ),
    GetPage(
      name: RouteNames.reschedule,
      page: ()=>  const RescheduleScreen(),
    ),
    GetPage(
      name: RouteNames.scheduleTime,
      page: ()=>  const ScheduleTimeScreen(),
    ),
    GetPage(
      name: RouteNames.cancelSchedule,
      page: ()=>  const CancelAppointment(),
    ),

  ];

}