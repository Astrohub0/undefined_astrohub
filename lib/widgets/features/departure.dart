import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../../constants/image_paths.dart' as images;

Widget departure(BuildContext context,
    {required String title,
    required String subtitle,
    required Widget? iconwidget}) {
  final width = MediaQuery.of(context).size.width;
  iconwidget ??= Transform.rotate(
    angle: 2.45, //for arrival 3.5
    child: Container(
      margin: const EdgeInsets.only(top: 10.0, right: 10.0),
      child: const Icon(
        Icons.arrow_back_rounded,
        color: Colors.white,
        size: 45,
      ),
    ),
  );
  return GlassmorphicContainer(
    width: width * 0.8,
    height: 80,
    blur: 50,
    border: 2,
    borderGradient: const LinearGradient(
      begin: Alignment(0.59, 0.80),
      end: Alignment(-0.59, -0.8),
      colors: [
        Color.fromRGBO(255, 255, 255, 0.05),
        Color.fromRGBO(255, 255, 255, 0.05)
      ],
    ),
    borderRadius: 16.0,
    linearGradient: AppGradients.glassBoxGradient,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 5.0),
          child: Image.asset(images.planetIcon, width: 50),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyles.departureTitle,
            ),
            Text(
              subtitle,
              style: TextStyles.departureSubtitle,
            ),
          ],
        ),
        const Spacer(),
        iconwidget,
      ],
    ),
  );
}
