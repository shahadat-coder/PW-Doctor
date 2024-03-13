import'package:flutter/material.dart';

Widget titleLarge (BuildContext context, String data){
  return Text(
    data,
    style: Theme.of(context).textTheme.titleLarge,
  );
}

Widget headlineLarge (BuildContext context, String data){
  return Text(
    data,
    style: Theme.of(context).textTheme.headlineLarge,
  );
}
Widget bodyMedium (BuildContext context, String data){
  return Text(
    data,
    style: Theme.of(context).textTheme.bodyMedium,
  );
}