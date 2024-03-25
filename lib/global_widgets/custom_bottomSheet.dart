import 'package:flutter/material.dart';
import 'package:pw_doctor/global_widgets/custom_text.dart';
import 'package:pw_doctor/models/fav_doctor_model.dart';
import 'package:pw_doctor/utils/colors.dart';

import 'option_button.dart';

class ButtonsheetWidget extends StatelessWidget {
  final FavDoctorModel favDoctor;

  const ButtonsheetWidget({
     Key? key,
    required this.favDoctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text(
      "Remove from Favourite?",
            style:  TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 20,),
          Card(
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
                          image: NetworkImage(favDoctor.UrlImage),
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
                            ("${favDoctor.name}"),
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
                        '${favDoctor.section} | ${favDoctor.hospital}',
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
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
    OptionButton(
    title: 'Cancel',
    titleColor: AppColors.primaryColors,
    onTap: () {},
    backgroundColor: AppColors.primaryColors.withOpacity(0.1),
    ),
    OptionButton(
    title: 'Yes Remove',
    titleColor: AppColors.thirdColors,
        backgroundColor: AppColors.primaryColors,
    onTap: () {}
    ),

            ],
          )
        ],
      ),
    );
  }
}
