import 'package:flutter/material.dart';

class ReviewModel {
  String? name;
  String? subtitle;
  final String ImageUrl;

  ReviewModel({
    required this.name,
    required this.subtitle,
    required this.ImageUrl,

  });
}

final List<ReviewModel> review = [
  ReviewModel(
    name: "Charolette Hanlin",
    subtitle:
    'Dr. Jenny is very professional in her work and responsive. I have consulted and my problem is solved.',
    ImageUrl: 'https://storage.googleapis.com/pai-images/1ebdd59610d6401c93e138bc2d41592f.jpeg',
  ),
  ReviewModel(
    name: "Darron Kulikowski",
    subtitle:
    'The doctor is very beautiful and the service is excellent!\n I like it and want to consult again',
    ImageUrl: 'https://www.shutterstock.com/image-photo/young-casual-man-portrait-isolated-260nw-71585848.jpg',
  ),
  ReviewModel(
    name: "Lourolee Quintero",
    subtitle:
    'Doctors who are very skilled and fast in service I highly\n recommened Dr. Jenny for all who want to consult.',
    ImageUrl: 'https://www.shutterstock.com/shutterstock/photos/640005220/display_1500/stock-photo-indoor-portrait-of-beautiful-brunette-young-dark-skinned-woman-with-shaggy-hairstyle-smiling-640005220.jpg',
  ),
  ReviewModel(
    name: "Alleen Fullbright",
    subtitle:
    'Doctors who are very skilled and fast in service. My illness is cured, thank you so much',
    ImageUrl: 'https://thumbs.dreamstime.com/b/thoughtful-attractive-woman-serene-face-enigmatic-smile-standing-her-hand-to-her-chin-looking-pensively-36049530.jpg',
  ),
  ReviewModel(
    name: "Rodolfo Coode",
    subtitle:
    'Dr. Jenny is very professional in her work and responsive. I\n have consulted and my problem is solved. ',
    ImageUrl: 'https://t3.ftcdn.net/jpg/03/28/19/46/360_F_328194664_RKSHvMLgHphnD1nwQYb4QKcNeEApJmqa.jpg',
  ),
  ReviewModel(
    name: "Tylor Eria",
    subtitle:
    'Doctors who are very skilled and fast in service. My illness is cured, thank you so much',
    ImageUrl: 'https://as2.ftcdn.net/v2/jpg/05/63/75/39/1000_F_563753972_8moYzXP14VFwSnja9fGeTNE36q18lT2Y.jpg',
  ),
];
