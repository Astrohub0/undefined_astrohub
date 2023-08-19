import 'package:flutter/material.dart';

Widget primaryButton(BuildContext context, String text) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: (() {}),
    child: Container(
      width: width * 0.75,
      height: height * 0.05,
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF4CFF5E), Color(0xFF4CFF71)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
