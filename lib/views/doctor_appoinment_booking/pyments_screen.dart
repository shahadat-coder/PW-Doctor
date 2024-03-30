import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/code_container.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int? value;
  int? groupValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Payments',
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            bodyMedium(context, 'Select the payment method you want to use.'),
            const SizedBox(height: 20,),
            CodeContainer(
              title: 'PayPal',
              assetImage: Image.asset('assets/images/icons8-paypal-48.png', height: 70, width: 70,),
              icon: IconButton(
                onPressed: (){},
                icon: Radio(
                  value: 1, // Change this to a unique value
                  groupValue: groupValue,
                  onChanged: (int? newValue) {
                    setState(() {
                      groupValue = newValue;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 15,),
            CodeContainer(
              title: 'Google Pay',
              assetImage: Image.asset('assets/images/google.png', height: 70, width: 70),
              icon: IconButton(
                onPressed: (){},
                icon: Radio(
                  value: 2, // Change this to a unique value
                  groupValue: groupValue,
                  onChanged: (int? newValue) {
                    setState(() {
                      groupValue = newValue;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 15,),
            CodeContainer(
              title: 'Apple Pay',
              assetImage: Image.asset('assets/images/apple.png', height: 70, width: 70),
              icon: IconButton(
                onPressed: (){},
                icon: Radio(
                  value: 3,
                  groupValue: groupValue,
                  onChanged: (int? newValue) {
                    setState(() {
                      groupValue = newValue;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20,),
            CustomButton(title: 'Add New Card',titleColor: AppColors.primaryColors, onTap: (){
              Get.toNamed(RouteNames.addCard);
            },backgroundColor: AppColors.primaryColors.withOpacity(0.1),),
            const Spacer(),
            CustomButton(title: 'Next', onTap: (){
              Get.toNamed(RouteNames.reviewSummary);
            }),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
