import 'package:flutter/material.dart';

Widget dealsContainer(String image)
{
return SizedBox(
  width: 200,
  height: 215,
  child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        image,
        width: 200,
        height: 150,
        fit: BoxFit.cover,
      )),
);
}