import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';
import 'package:pw_doctor/views/doctor_appoinment_booking/pyments_screen.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Add new Card',
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
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(image: NetworkImage('https://www.ebl.com.bd/assets/cards/sub/Basis-Co-Branded-Prepaid-Card1.jpg'),fit: BoxFit.fill),
              ),
            ),
            const SizedBox(height: 15,),
            const Text(
              'Card Name',
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15,),
            TextFieldWidget(
              fillColor: Colors.grey.shade50,
              controller: nameController,
              hintText: 'Card Name',
              hintColor: Colors.black45,
            ),
            const SizedBox(height: 15,),
            const Text(
              'Card Number',
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15,),
            TextFieldWidget(
              fillColor: Colors.grey.shade50,
              controller: nameController,
              hintText: 'Card Number',
              hintColor: Colors.black45,
            ),
            const SizedBox(height: 15,),
            const Text(
              'Expiry Date',
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15,),
            TextFieldWidget(
              fillColor: Colors.grey.shade50,
              keyboardType: TextInputType.number,
              controller: nameController,
              hintText: 'Card Number',
              hintColor: Colors.black45,
            ),
            const Text(
              'CVV',
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15,),
            TextFieldWidget(
              fillColor: Colors.grey.shade50,
              keyboardType: TextInputType.number,
              controller: nameController,
              hintText: 'CVV',
              hintColor: Colors.black45,
            ),
            const SizedBox(height: 30,),
            CustomButton(title: 'Add', onTap: (){
              Get.off(const PaymentScreen());
            }),
          ],
        ),
      ),
    );
  }
}
