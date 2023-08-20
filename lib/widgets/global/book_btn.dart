import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/screens/book_round_trip.dart';
import 'package:astro_hub/screens/flight_details.dart';
import 'package:astro_hub/screens/no_available_crafts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../services/get_flights.dart';
import '../../constants/icon_paths.dart' as icons;

Widget bookFlight(context) {
  return FloatingActionButton(
    backgroundColor: AppColors.primarySolid01,
    shape: const CircleBorder(),
    onPressed: (() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        // need to process context
        Future flights = getFlights();
        print(flights);
        print(context);
        //return const NoAvailableCrafts();
        return BookRoundTrip();
      }));
    }),
    tooltip: 'Book a flight',
    child: SvgPicture.asset(icons.rocket),
  );
}
