import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_appbar.dart';
import 'package:pw_doctor/models/fav_doctor_model.dart';
import 'package:pw_doctor/utils/colors.dart';

class MyFavouriteDoctorScreen extends StatefulWidget {
  const MyFavouriteDoctorScreen({super.key});

  @override
  State<MyFavouriteDoctorScreen> createState() => _MyFavouriteDoctorScreenState();
}

class _MyFavouriteDoctorScreenState extends State<MyFavouriteDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: const CustomAppBar(
        isLeading: true,
        title: 'My Favourite Doctor',
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.pending_outlined)
        ],
      ),
      body: ListView.separated(
        itemCount: favDoctor.length,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20), // Add gap between items
        itemBuilder: (context,index) {
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
                          image: NetworkImage(favDoctor[index].UrlImage),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
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
                          const SizedBox(width: 100,),
                          const Icon(Icons.favorite,color: AppColors.primaryColors,)
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        width: MediaQuery.of(context).size.width - 140, // Adjust width as needed
                        child: Divider(color: Colors.grey.withOpacity(0.3), height: 2),
                      ),
                      const SizedBox(height: 15,),
                      Text(
                        '${favDoctor[index].section} | ${favDoctor[index].hospital}',
                        style: const TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star,color: AppColors.primaryColors,size: 15,),
                          SizedBox(width: 5,),
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
          );
        },
      ),


    );
  }
}
