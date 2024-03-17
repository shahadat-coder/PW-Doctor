import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/global_widgets/option_button.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';

class FingerScreen extends StatefulWidget {
  const FingerScreen({Key? key}) : super(key: key);

  @override
  State<FingerScreen> createState() => _FingerScreenState();
}

class _FingerScreenState extends State<FingerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Set Your Fingerprint',
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DescribeText(title: 'Add a fingerprint to make your account\n more secure.'),
              const SizedBox(height: 70),
              Image.asset('assets/images/finger.png'),
              const SizedBox(height: 100),
              const DescribeText(title: 'Please put your finger on the fingerprint\n scanner to get started.'),
              const SizedBox(height: 120),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OptionButton(
                    title: 'Skip',
                    titleColor: AppColors.primaryColors,
                    onTap: () {},
                    backgroundColor: AppColors.primaryColors.withOpacity(0.1),
                  ),
                  OptionButton(
                    title: 'Continue',
                    titleColor: AppColors.thirdColors,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          Future.delayed(const Duration(seconds: 5), () {
                            Get.toNamed(RouteNames.homePage);
                          });
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
                                    'assets/images/person.png',
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
                                    title: "Your account is ready to use. You will be redirected to the Home page in a few seconds.",
                                  ),
                                  const SizedBox(height: 20),
                                  const CircularProgressIndicator(
                                    color: AppColors.primaryColors,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    backgroundColor: AppColors.primaryColors,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


