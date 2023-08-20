import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassMorphTextCard extends StatefulWidget {
  const GlassMorphTextCard({
    super.key,
    required this.text,
    required this.onTextValueChange,
  });

  final String text;
  final Function onTextValueChange;

  @override
  State<GlassMorphTextCard> createState() => _GlassMorphTextCardState();
}

class _GlassMorphTextCardState extends State<GlassMorphTextCard> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GlassmorphicContainer(
        width: width,
        height: height * 0.06,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  widget.onTextValueChange(value);
                },
              ),
            ),
          ],
        ),
    );
  }
}