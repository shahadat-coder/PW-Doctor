import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_or_divider.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/utils/remeberRow.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> globalkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/hand.png'),
                const SizedBox(
                  height: 20,
                ),
                titleLarge(context, 'Create New Account'),
                const SizedBox(
                  height: 25,
                ),
                Form(
                  key: globalkey,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFieldWidget(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(child: RememberWidget()),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(title: 'Sign up', onTap: () {}),
                const SizedBox(
                  height: 30,
                ),
                const OrDividerWidget(
                  label: 'Or continue with',
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300, width: 1),
                        ),
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          'assets/images/facebook.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300, width: 1),
                        ),
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/images/google.png',
                            height: 30, width: 30),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300, width: 1),
                        ),
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          'assets/images/apple.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account",
                        style: TextStyle(color: Colors.grey)),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RouteNames.login);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.primaryColors,
                      ),
                      child: const Text('Sign in'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
