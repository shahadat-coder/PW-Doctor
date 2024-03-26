import 'package:flutter/material.dart';

class CartModel {
  String? title;
  String? subtitle;
  final IconData iconData; // Using IconData for the icon

  CartModel({required this.title, required this.subtitle, required this.iconData});
}

final List<CartModel> cartCircle = [
  CartModel(
    title: "5,000+",
    subtitle: 'patients',
    iconData: Icons.group,
  ),
  CartModel(
    title: "10+",
    subtitle: 'years experience',
    iconData: Icons.data_exploration_sharp,
  ),
  CartModel(
    title: "4.9",
    subtitle: 'rating',
    iconData: Icons.star,
  ),
  CartModel(
    title: "4,905",
    subtitle: 'reviews',
    iconData: Icons.comment,
  ),
];
