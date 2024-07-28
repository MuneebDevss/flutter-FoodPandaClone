import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cuisines(String image,String subtitle)
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(225, 200, 198, 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 100,
        height: 100,
        child: Image.asset(image),
      ),
      const SizedBox(height: 5,),
      Text(
        subtitle,
        style: GoogleFonts.roboto(
          fontWeight:FontWeight.w600,
          fontSize: 12,
        ),
      ),
    ],
  );
}