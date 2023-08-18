import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget bookFlight() {
  return FloatingActionButton(
    backgroundColor: AppColors.primarySolid01,
    shape: const CircleBorder(),
    onPressed: ((){}),
    tooltip: 'Book a flight',
    child: SvgPicture.asset('assets/icons/rocket.svg'),
  );
}
