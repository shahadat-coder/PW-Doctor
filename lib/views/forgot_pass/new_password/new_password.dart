import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/utils/remeberRow.dart';

import '../../../routes/route_names.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Create New Password',
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/images/newPass.png')),
                SizedBox(height: 20,),
                DescribeText(title: 'Create Your New Password'),
                SizedBox(height: 20,),
                TextFieldWidget(
                  controller: passController,
                  obscureText: true,
                  prefixIcon: Icons.lock,
                  prefixIconColor: Colors.black,
                  hintText: 'Password',
                  hintColor: Colors.grey,
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icons.visibility_off_sharp,
                  suffixIconColor: Colors.black,
                ),
                const SizedBox(height: 30,),
                TextFieldWidget(
                  controller: passController,
                  prefixIcon: Icons.lock,
                  obscureText: true,
                  prefixIconColor: Colors.black,
                  hintText: 'Password',
                  hintColor: Colors.grey,
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icons.visibility_off_sharp,
                  suffixIconColor: Colors.black,
                ),
                const SizedBox(height: 20,),
                const Center(child: RememberWidget()),
                const SizedBox(height: 50,),
                CustomButton(
                  title: 'Continue',
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
                                  'assets/images/right.png',
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
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
