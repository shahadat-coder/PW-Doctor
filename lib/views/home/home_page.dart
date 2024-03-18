import 'package:flutter/material.dart';
import 'package:pw_doctor/views/home/homeWidget/carousel_slider.dart';
import 'package:pw_doctor/views/home/homeWidget/home_appBar.dart';
import 'package:pw_doctor/views/home/homeWidget/home_search.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeSearchField(),
            SizedBox(height: 20,),
            HomeCarouselSlider(slides: [
            ],),
          ],
        ),
      ),
    );
    
  }
}
