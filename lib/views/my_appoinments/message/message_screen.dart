import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/my_appoinments/message/camera.dart';

import '../../../global_widgets/custom_textfield.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {


  List<Map> chatDetails = [
    {
      'message' : 'Hi, good afternoon Dr. Travis',
      'is_me' : true,
      'time' : '04:00 PM'
    },
    {
      'message' : "I'm Andrew. I have a problem with my immune system.",
      'is_me' : true,
      'time' : '04:00 PM'
    },
    {
      'message' : 'Hello, good afternoon too Andrew',
      'is_me' : false,
      'time' : '04:05 PM'
    },
    {
      'message' : 'Can you tell me the problem you are having? So that I can identify it.',
      'is_me' : false,
      'time' : '04:07 PM'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        title: 'Dr. Travis Westaby',
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.pending_outlined),
          ),
        ],
      ),
      body: Column(
       children: [
         Expanded(
           child: ListView.builder(
               padding: EdgeInsets.all(15),
               itemCount: chatDetails.length,
               itemBuilder: (context,index){
                 final data = chatDetails[index];
                 return Column(
                   crossAxisAlignment: data['is_me'] == true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                   children: [
                     Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Text(data['time'],style: TextStyle(
                           fontSize: 12
                         ),),
                         Container(
                           margin: EdgeInsets.symmetric(vertical: 7),
                           padding: EdgeInsets.symmetric(
                               vertical: 10,
                               horizontal: 10
                           ),
                           constraints: BoxConstraints(
                             maxWidth: 200,
                           ),
                           decoration: BoxDecoration(
                               color: data['is_me'] == true ? AppColors.primaryColors : Colors.grey.shade200,
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(20),
                                 bottomRight: Radius.circular(20),
                               )
                           ),
                           child: Center(
                             child: Text(data['message'],style: TextStyle(
                               color: data['is_me'] == true ? AppColors.thirdColors : Colors.black,
                             ),),
                           ),
                         ),
                       ],
                     )
                   ],
                 ) ;
           
               }),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
             children: [
               Expanded(
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10)
                     ),
                     child: const Camera(),
                   )
               ),
               SizedBox(width: 7,),
               CircleAvatar(
                 radius: 25,
                 backgroundColor: AppColors.primaryColors,
                 child: Center(
                   child: Icon(Icons.mic_rounded,size: 25,color: Colors.white,),
                 ),
               )
             ],
           ),
         )
       ],
      )
    );
  }
}
