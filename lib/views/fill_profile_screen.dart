import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/global_widgets/custom_button.dart';
import 'package:pw_doctor/global_widgets/custom_textfield.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';

class FillYourProfileScreen extends StatefulWidget {
  const FillYourProfileScreen({Key? key}) : super(key: key);

  @override
  State<FillYourProfileScreen> createState() => _FillYourProfileScreenState();
}

class _FillYourProfileScreenState extends State<FillYourProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'Fill your profile',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 25,),
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 3, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ],
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.realmenrealstyle.com/wp-content/uploads/2023/03/The-Side-Part.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: AppColors.primaryColors,
                          ),
                          color: AppColors.primaryColors,
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: AppColors.thirdColors,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                TextFieldWidget(
                  controller: nameController,
                  hintText: 'Name',
                  hintColor: Colors.grey,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  controller: nickNameController,
                  hintText: 'Nick Name',
                  hintColor: Colors.grey,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  controller: dateController,
                  hintText: 'Date of Birth',
                  hintColor: Colors.grey,
                  keyboardType: TextInputType.datetime,
                  suffixIcon: Icons.date_range,
                  suffixIconColor: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  controller: emailController,
                  hintText: 'Email',
                  hintColor: Colors.grey,
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icons.mail,
                  suffixIconColor: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldWidget(
                  controller: genderController,
                  hintText: 'Gender',
                  hintColor: Colors.grey,
                  keyboardType: TextInputType.text,
                  suffixIcon: Icons.arrow_drop_down,
                  suffixIconColor: Colors.grey,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(title: 'Continue', onTap: (){
                 Get.toNamed(RouteNames.createPin);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
