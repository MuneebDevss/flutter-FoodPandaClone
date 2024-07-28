
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget container(double height,String heading,String subHeading,String image)
{

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    width: 178,
    height: height,
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(heading,style: GoogleFonts.roboto(
           fontWeight:FontWeight.w900,
            fontSize:17,
         )
           ,),
         Row(
           children: [
             Text(
               subHeading,style: GoogleFonts.cabin(
               fontSize:12,
             ),),
             Container(
               alignment: Alignment.bottomRight,
               padding: const EdgeInsets.only(left: 5.4,top: 10),
               height: height-60,
               child: Image.asset(image,width: 40,height: 40,fit: BoxFit.cover,),
             ),
           ],
         ),

      ],
    ),
  );
}