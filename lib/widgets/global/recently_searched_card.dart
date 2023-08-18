import 'dart:ui';
import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget recentlySearched(
  BuildContext context, {
  required String imgUrl,
  required String title,
  required String subtitle,
}) {
  final width = MediaQuery.of(context).size.width;
  return ClipRRect(
    borderRadius: BorderRadius.circular(6.0),
    child: Container(
      width: width * 0.8,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
      ),
      child: Stack(children: [
        //Blur Effect
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Container(),
        ),
        //Gradient Effect
        Container(
          decoration: const BoxDecoration(
              gradient: RadialGradient(
            center: Alignment(1.0, 0.0),
            radius: 5.290030, // This value is equivalent to 52900.30%
            colors: [
              Color.fromRGBO(14, 139, 211, 0.20),
              Color.fromRGBO(24, 129, 188, 0.20),
              Color.fromRGBO(44, 129, 255, 0.20),
              Color.fromRGBO(14, 139, 211, 0.12),
            ],
          )),
        ),
        //Child
        Row(
          children: [
            
          ],
        )
      ]),
    ),
  );
}
