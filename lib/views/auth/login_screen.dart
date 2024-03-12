import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/utils/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          isLeading: true,
        ),
        body: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset('assets/images/image_tree.png'),
            const SizedBox(
              height: 10,
            ),
            headlineLarge(context, "Let's you in"),
            const SizedBox(
              height: 20,
            ),
            SocialButton(
                image: Image.asset('assets/images/facebook.png'),
                title: 'Continue with Google',
                onTap: () {}),
            const SizedBox(
              height: 12,
            ),
            SocialButton(
                image: Image.asset('assets/images/google.png'),
                title: 'Continue with Google',
                onTap: () {}),
            const SizedBox(
              height: 12,
            ),
            SocialButton(
                image: Image.asset('assets/images/apple.png'),
                title: 'Continue with Apple',
                onTap: () {}),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    indent: 5,
                    endIndent: 5,
                    thickness: 0.7,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 10,
                  ),
                  child: Text(
                    'Or',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    indent: 5,
                    endIndent: 5,
                    thickness: 0.7,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomButton(title: 'Sign in with Password', onTap: () {}),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(color: Colors.grey)),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.primaryColors,
                  ),
                  child: const Text('Sign up'),
                ),
              ],
            ),
          ]),
        ));
  }
}
