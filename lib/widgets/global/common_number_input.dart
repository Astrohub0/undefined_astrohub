import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget numberInput(width, height, String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          color: Colors.white.withOpacity(0.6),
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 10),
      GlassmorphicContainer(
        width: width, //width * 0.25,
        height: height, //height * 0.05
        borderRadius: 8.0,
        linearGradient: AppGradients.glassInputGradient,
        border: 0.5,
        blur: 50,
        borderGradient: const LinearGradient(
          begin: Alignment(0.59, 0.80),
          end: Alignment(-0.59, -0.8),
          colors: [
            Color.fromARGB(75, 255, 255, 255),
            Color.fromARGB(11, 255, 255, 255),
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          width: width,
          height: height,
          child: TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              hintText: "0",
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered
          ),
        ),
      ),
    ],
  );
}
