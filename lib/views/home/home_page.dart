import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_doctor/routes/route_names.dart';
import 'package:pw_doctor/views/home/homeWidget/all_doctors_category.dart';
import 'package:pw_doctor/views/home/homeWidget/carousel_slider.dart';
import 'package:pw_doctor/views/home/homeWidget/home_appBar.dart';
import 'package:pw_doctor/views/home/homeWidget/home_search.dart';
import 'package:pw_doctor/views/home/homeWidget/itemRow.dart';
import 'package:pw_doctor/views/home/homeWidget/see_all_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeSearchField(),
              SizedBox(height: 20,),
              HomeCarouselSlider(slides: [
                {'imageUrl': 'https://www.bhatiahospital.org/storage/app/public/home_banner/2/image/1503411077revised-bhatia-homebanner-03.jpg'},
                {'imageUrl': 'https://avdaddenavarhospital.com/wp-content/uploads/2021/03/stroke.jpg'},
                {'imageUrl': 'https://previews.123rf.com/images/kurhan/kurhan1510/kurhan151001186/46515699-group-of-hospital-doctors-health-care-banner-background.jpg'},
                {'imageUrl': 'https://t4.ftcdn.net/jpg/06/44/46/61/360_F_644466113_EP9z2kXACTCtII0XXv1p0ATBbTj79pUC.jpg'},
              ],),
              SizedBox(height: 10,),
              ArivableRow(title: 'Doctor Speciality'),
              SizedBox(height: 20,),
              SizedBox(
                height: 220,
                child: ItemCart(),
              ),
              SizedBox(height: 20,),
              ArivableRow(title: 'Top Doctors',onTap: (){
                Get.toNamed(RouteNames.topDoctor);
              },),
              SizedBox(height: 20,),
              DoctorsCategory()
            ],
          ),
        ),
      ),
    );
    
  }
}
