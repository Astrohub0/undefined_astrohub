import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget boardingpass(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    child: Container(
      
    ),
    width: width*0.8,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/boardingpass_bg.png"),
          fit: BoxFit.contain),
    ),
  );
}

