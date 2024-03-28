import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';

class PatientDetailsScreen extends StatefulWidget {
  const PatientDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PatientDetailsScreen> createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController desController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Patient Details',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Full Name',
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
              hintText: 'Full Name',
              hintColor: Colors.black45,
            ),
            const SizedBox(height: 15,),
            const Text(
              'Gender',
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
              controller: genderController,
              hintText: 'Gender',
              hintColor: Colors.black45,
              suffixIcon: Icons.arrow_drop_down_sharp,
              suffixIconColor: Colors.black87,
            ),
            const SizedBox(height: 15,),
            const Text(
              'Your Age',
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15,),
            TextFieldWidget(
              controller: ageController,
              fillColor: Colors.grey.shade50,
              hintText: 'Age',
              hintColor: Colors.black45,
              suffixIcon: Icons.arrow_drop_down_sharp,
              suffixIconColor: Colors.black87,
            ),
            const SizedBox(height: 15,),
            const Text(
              'Write Your Problem',
              style: TextStyle(
                wordSpacing: 0.15,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15,),
            TextFieldWidget(
              maxLines: 7,
              controller: desController, // Fix controller
              fillColor: Colors.grey.shade50,
              hintText: 'Problem',
              hintColor: Colors.black45,
            ),
            const Spacer(),
            CustomButton(title: 'Next', onTap: (){}),
          ],
        ),
      ),
    );
  }
}
