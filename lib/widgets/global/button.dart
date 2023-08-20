import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';

Widget button(String buttonTitle, BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
    child: Container(
      width: width*0.8,
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF4CFF5E), Color(0xFF4CFF71)],
          ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
            ),
          ),
        ],
        ),
      ),
  );
}
