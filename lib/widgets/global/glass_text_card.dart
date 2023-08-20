import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassMorphTextCard extends StatelessWidget {
  const GlassMorphTextCard({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GlassmorphicContainer(
        width: width,
        height: height * 0.05,
        borderRadius: 8.0,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        linearGradient: AppGradients.glassInputGradient,
        border: 0.5,
        blur: 50,
        borderGradient: const LinearGradient(
          begin: Alignment(0.59, 0.80),
          end: Alignment(-0.59, -0.8),
          colors: [
            Color(0x4AFFFFFF),
            Color(0x0AFFFFFF),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text (
              // align the text to the center
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
    );
  }
}