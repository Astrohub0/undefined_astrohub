import 'dart:ui';
import 'package:flutter/material.dart';

Widget recentlySearched(
  BuildContext context, {
  required String imgUrl,
  required String title,
  required String subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        width: 297,
        height: 39,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Container(
                width: 6,
                color: const Color(0xFF0E8BD3),
              ),
              Image.asset(imgUrl, width: 50,height: 50,),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 20,),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ]),
      ),
    ),
  );
}
