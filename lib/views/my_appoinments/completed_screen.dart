import 'package:flutter/material.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/my_appoinments/widgets/choose_button.dart';

import '../../models/my_appoinment_model/completed_model.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
    child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
    itemCount: completedData.length,
        itemBuilder: (context,index){

          return Card(
            elevation: 0,
            semanticContainer: true,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(completedData[index].UrlImage),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ("${completedData[index].name}"),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            wordSpacing: 0.15,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        Row(
                          children: [
                            Text('${completedData[index].communicate}',style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                                fontWeight: FontWeight.w800
                            ),),
                            Chip(
                              label: const Text(
                                'Completed',
                                style: TextStyle(color: Colors.green, fontSize: 12),
                              ),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.green,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: AppColors.thirdColors,
                            ),
                            const SizedBox(width: 12,),
                            Image.asset('${completedData[index].AssetImage}',height: 55,width: 55,),
                          ],
                        ),
                        Text(
                          '${completedData[index].date}',
                          style:  const TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ChooseButton(title: 'Book Again',
                                titleColor: AppColors.primaryColors,
                                borderColor: AppColors.primaryColors,
                                onTap: (){}),
                            const SizedBox(width: 15,),
                            ChooseButton(title: 'Leave a Review',
                                titleColor: AppColors.thirdColors,
                                backgroundColor: AppColors.primaryColors,
                                onTap: (){}),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    ),
    );


  }
}
