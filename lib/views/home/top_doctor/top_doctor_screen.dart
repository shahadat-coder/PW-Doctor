import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/global_widgets/filter_bottomSheet.dart';
import 'package:pw_doctor/models/top_doctor_model.dart';
import 'package:pw_doctor/utils/colors.dart';
import 'package:pw_doctor/views/home/homeWidget/all_doctors_category.dart';
import 'package:pw_doctor/views/home/homeWidget/home_search.dart';

import '../../../routes/route_names.dart';

class TopDoctorScreen extends StatefulWidget {
  const TopDoctorScreen({Key? key}) : super(key: key);

  @override
  State<TopDoctorScreen> createState() => _TopDoctorScreenState();
}

class _TopDoctorScreenState extends State<TopDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Expanded(
                   child: HomeSearchField(),
                ),

              ],
            ),
            SizedBox(height: 20),
            const DoctorsCategory(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bodyMedium(context, '460 founds'),
                  InkWell(
                    onTap: (){
                         showModalBottomSheet(
               context: context,
               builder: (BuildContext context) {
                         return FilterButtonsheetWidget();
                     },
                    );
                       },
                    child: Row(
                      children: [
                        Text('Default',style: TextStyle(
                          color: AppColors.primaryColors,
                          fontSize: 15
                        ),),
                        SizedBox(width: 5,),
                        Icon(Icons.add_road_rounded,color: AppColors.primaryColors,size: 15,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: topDoctor.length,
                separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 20), // Add gap between items
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                        Get.toNamed(RouteNames.doctorProfile);
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
                                    image: NetworkImage(
                                      topDoctor[index].UrlImage,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ("${topDoctor[index].name}"),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        wordSpacing: 0.15,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 100),
                                    const Icon(
                                      Icons.favorite,
                                      color: AppColors.primaryColors,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Container(
                                  width: MediaQuery.of(context).size.width -
                                      140, // Adjust width as needed
                                  child: Divider(
                                    color: Colors.grey.withOpacity(0.3),
                                    height: 2,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  '${topDoctor[index].section} | ${topDoctor[index].hospital}',
                                  style: const TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: AppColors.primaryColors,
                                      size: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '4.6  (3.876 reviews)',
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
