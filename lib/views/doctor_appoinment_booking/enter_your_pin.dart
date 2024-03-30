import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';

class EnterYourPinScreen extends StatefulWidget {
  const EnterYourPinScreen({Key? key}) : super(key: key);

  @override
  State<EnterYourPinScreen> createState() => _EnterYourPinScreenState();
}

class _EnterYourPinScreenState extends State<EnterYourPinScreen> {
  @override
  Widget build(BuildContext context) {
    String pin = '';
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Enter Your PIN',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            const DescribeText(title: 'Enter your PIN to confirm appointment'),
            const SizedBox(height: 40),
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
              appContext: context,
              onChanged: (value) {
                pin = value;
              },
            ),
            const SizedBox(height: 30),
            const Spacer(),
            CustomButton(
              title: 'Continue',
              onTap: () {
                if (pin.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.transparent,
                        content: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/images/error.png', // Change image for empty pin
                                height: 200,
                                width: 200,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Oops, Failed",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const DescribeText(
                                title: "Appointment failed. Please check your internet connection then try again.",
                              ),
                              const SizedBox(height: 20),
                              CustomButton(title: 'View Appointment', onTap: () {}),
                              const SizedBox(height: 10),
                              CustomButton(
                                title: 'Cancel',
                                backgroundColor: AppColors.primaryColors.withOpacity(0.1),
                                titleColor: AppColors.primaryColors,
                                onTap: () {
                                  Get.back();
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.transparent,
                        content: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/images/scedule.png',
                                height: 200,
                                width: 200,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Congratulations!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.primaryColors,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const DescribeText(
                                title: "Appointment successfully booked.You will receive a notification and the doctor you selected will contact you.",
                              ),
                              const SizedBox(height: 20),
                              CustomButton(title: 'View Appointment', onTap: (){}),
                              const SizedBox(height: 10),
                              CustomButton(title: 'Cancel',backgroundColor: AppColors.primaryColors.withOpacity(0.1),titleColor: AppColors.primaryColors, onTap: (){
                                Get.back();
                              })
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
