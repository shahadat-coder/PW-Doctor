import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/global_widgets/seconds_remaining.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'OTP Code Verification',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200,),
            const DescribeText(title: 'Code has send to +018******13'),
            const SizedBox(
              height: 40,
            ),
            PinCodeTextField(
                length: 4,
                obscureText: true,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 70,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  activeColor: AppColors.primaryColors.withOpacity(0.3),
                  inactiveColor: Colors.grey.withOpacity(0.2),
                  selectedColor: Colors.grey.withOpacity(0.2),
                ),
                appContext: context),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: SecondsRemaining(),
            ),
            const Spacer(),
            CustomButton(title: 'Verify', onTap: (){
              Get.toNamed(RouteNames.newCreatePass);
            }),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
