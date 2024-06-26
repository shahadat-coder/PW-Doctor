import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/models/fav_doctor_model.dart';
import 'package:pw_doctor/models/my_appoinment_model/upcoming_model.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/my_appoinments/doctor_details.dart';
import 'package:pw_doctor/views/my_appoinments/widgets/cancel_buttonsheet.dart';
import 'widgets/choose_button.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({super.key});

  @override
  State<UpcomingScreen> createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  late final doctor = Get.arguments as UpcomingModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
        itemCount: upcomingData.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Get.to(DoctorDetails(doctor:  upcomingData[index],));
              },
              child: Card(
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
                              image: NetworkImage(upcomingData[index].UrlImage),
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
                              ("${favDoctor[index].name}"),
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
                                 Text('${upcomingData[index].communicate}',style: const TextStyle(
                                   fontSize: 13,
                                   color: Colors.black54,
                                   fontWeight: FontWeight.w800
                                 ),),
                                 Chip(
                                   label: const Text(
                                     'Upcoming',
                                     style: TextStyle(color: AppColors.primaryColors, fontSize: 12),
                                   ),
                                   shape: RoundedRectangleBorder(
                                     side: const BorderSide(
                                       color: AppColors.primaryColors,
                                       width: 1.0,
                                     ),
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   backgroundColor: AppColors.thirdColors,
                                 ),
                                 const SizedBox(width: 15,),
                                 Image.asset('${upcomingData[index].AssetImage}',height: 55,width: 55,),
                               ],
                                                                                                                                                      ),
                            Text(
                              '${upcomingData[index].date}',
                              style:  const TextStyle(
                                color: Colors.black54,
                                fontSize: 12
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ChooseButton(title: 'Cancel This',
                                    titleColor: AppColors.primaryColors,
                                     borderColor: AppColors.primaryColors,
                                    onTap: (){
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const CancelButtonsheetWidget();
                                        },
                                      );
                                    }),
                                const SizedBox(width: 15,),
                                ChooseButton(title: 'Reschedule',
                                    titleColor: AppColors.thirdColors,
                                    backgroundColor: AppColors.primaryColors,
                                    onTap: (){
                                  Get.toNamed(RouteNames.reschedule);
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
