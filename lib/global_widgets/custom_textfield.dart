import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.email,color: Colors.grey),
            hintText: 'Email',
            hintStyle: const TextStyle(color: Colors.grey,),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:  BorderSide(
                color: Colors.grey.withOpacity(0.2), // Change border color here
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:  BorderSide(
                color: AppColors.primaryColors.withOpacity(0.7), // Change border color here
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock,color: Colors.grey,),
            suffixIcon: const Icon(Icons.visibility_off_sharp,color: Colors.grey),
            hintText: 'Password',
            hintStyle: const TextStyle(color: Colors.grey,),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:  BorderSide(
                color: Colors.grey.withOpacity(0.2), // Change border color here
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:  BorderSide(
                color: AppColors.primaryColors.withOpacity(0.7), // Change border color here
              ),
            ),
          ),
        ),
      ],
    );
  }
}