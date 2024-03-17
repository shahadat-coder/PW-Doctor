import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/code_container.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/descriptin_title.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Forgot Password',
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/forgotpass.png'),
              const SizedBox(height: 20,),
              const DescribeText(title: 'Select which contact details should we use to\n reset your password.'),
              const SizedBox(height: 20,),
              CodeContainer(title: 'via SMS:', subtitle: '+018******13', assetImage: Image.asset('assets/images/via sms.png',height: 70,width: 70,)),
              const SizedBox(height: 20,),
              CodeContainer(title: 'via Email:', subtitle: '+mh**@gmail.com', assetImage: Image.asset('assets/images/via email.png',height: 70,width: 70)),
              const SizedBox(height: 20,),
              CustomButton(title: 'Container', onTap: (){})
          ]
          ),
        ),
      ),
    );
  }
}
