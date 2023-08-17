import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';

Color getColorByClassName(String className) {
  switch (className) {
    case 'Economy':
      return AppColors.utilitySolidYellow; // Change this color for Economy class
    case 'Business':
      return AppColors.utilitySolidBlue; // Change this color for Business class
    case 'First Class':
      return AppColors.utilitySolidPink; // Change this color for First Class
    default:
      return AppColors.utilitySolidYellow; // Default color if className doesn't match
  }
}
