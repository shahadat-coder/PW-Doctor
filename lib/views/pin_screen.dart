import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/utils/colors.dart';

class CreatePinScreen extends StatefulWidget {
  const CreatePinScreen({super.key});

  @override
  State<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends State<CreatePinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Create New PIN',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Add a PIN number to make your account\n more secure.",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 15)),
              const SizedBox(height: 70,),
          
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
                ), appContext: context),
                  const SizedBox(height: 250,),
                  CustomButton(title: 'Continue', onTap: (){}),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
