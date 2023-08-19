import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/screens/no_available_crafts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget bookFlight(context) {
  return FloatingActionButton(
    backgroundColor: AppColors.primarySolid01,
    shape: const CircleBorder(),
    onPressed: (() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const NoAvailableCrafts();
      }));
    }),
    tooltip: 'Book a flight',
    child: SvgPicture.asset('assets/icons/rocket.svg'),
  );
}
