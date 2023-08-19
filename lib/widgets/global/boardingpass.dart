import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget boardingpass(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Image.asset(
        'assets/images/boardingpass_bg.png', // Replace with your image path
        fit: BoxFit.contain,
        width: width*0.8,
        // height: double.infinity,
      ),
      Container(
        width: width*0.8,
        color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Ticket Number',
                style: TextStyle(
                  color: Color(0xFF565656),
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
              // const SizedBox(height: 16.0),
              const Text(
                '1234567',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 32.0),
              Image.asset(
                'assets/images/nasalogo.png', // Replace with your logo image path
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
