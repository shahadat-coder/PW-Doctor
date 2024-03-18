import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/utils/colors.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          fillColor: Colors.grey[200],
          //filled: true
          prefixIcon:  Icon(
            Icons.search,
            color: Colors.grey.shade500,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/images/filter.png',height: 10,width: 10,),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black.withOpacity(0.2)
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black.withOpacity(0.2)
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black.withOpacity(0.2)
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}