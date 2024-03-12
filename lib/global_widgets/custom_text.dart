import'package:flutter/material.dart';

Widget displayMedium (BuildContext context, String data){
  return Text(
    data,
    style: Theme.of(context).textTheme.displayMedium,
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