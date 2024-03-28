import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/code_container.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';
import 'package:pw_doctor/routes/route_names.dart';


class SelectPackageScreen extends StatefulWidget {
  const SelectPackageScreen({Key? key}) : super(key: key);

  @override
  State<SelectPackageScreen> createState() => _SelectPackageScreenState();
}

class _SelectPackageScreenState extends State<SelectPackageScreen> {
  final TextEditingController timeController = TextEditingController();
  int? value;
  int? groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: CustomAppBar(
        isLeading: true,
        title: "Select Package",
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                'Select Duration',
                style: TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15,),
              TextFieldWidget(
                fillColor: Colors.grey.shade50,
                controller: timeController,
                prefixIcon: Icons.watch_later,
                prefixIconColor: Colors.black87,
                hintText: 'Time',
                hintColor: Colors.black45,
                suffixIcon: Icons.arrow_drop_down_sharp,
                suffixIconColor: Colors.black87,
              ),
              SizedBox(height: 15,),
              Text(
                'Select Package',
                style: TextStyle(
                  wordSpacing: 0.15,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              CodeContainer(
                title: 'Messaging',
                subtitle: 'Chat message with doctor',
                assetImage: Image.asset('assets/images/via sms.png', height: 70, width: 70,),
                money: "\$20",
                sub: '30 mins',
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
              SizedBox(height: 15,),
              CodeContainer(
                title: 'Voice Call',
                subtitle: 'Voice call with doctor',
                assetImage: Image.asset('assets/images/audio.png', height: 70, width: 70),
                money: "\$40",
                sub: '30 mins',
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
              SizedBox(height: 15,),
              CodeContainer(
                title: 'Video Call',
                subtitle: 'Video call with doctor',
                assetImage: Image.asset('assets/images/video.png', height: 70, width: 70),
                money: "\$60",
                sub: '30 mins',
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
              const Spacer(),
              CustomButton(title: 'Next', onTap: (){
                Get.toNamed(RouteNames.patientDetails);
              })
            ]
        ),
      ),
    );
  }
}
