import 'package:flutter/material.dart';

Widget companyLabel(String title, String imageUrl) {
  return Row(
    children: [
      Image.asset(imageUrl, width: 30),
      const SizedBox(width: 10),
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
