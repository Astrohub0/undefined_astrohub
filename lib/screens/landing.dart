import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/widgets/features/populer_destin.dart';
import 'package:astro_hub/widgets/features/upcoming_trips.dart';
import 'package:astro_hub/widgets/global/book_btn.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/common_search.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CommonAppBar(title: ''),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
        child: ListView(
          children: [
            searchBar(context, (p0) => null),
            SizedBox(height: height * 0.02),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Upcoming Trips', style: TextStyles.subtopicText)),
            SizedBox(height: height * 0.02),
            upcomingTrip(context,
                refNo: 'Ref #SJX8765',
                from: 'EARTH 2.0',
                to: 'MARS',
                iconUrl: 'assets/icons/round_trip.svg',
                logoUrl: 'assets/images/nasalogo.png',
                date: '8/7',
                time: '9.00AM'),
            SizedBox(height: height * 0.02),
            upcomingTrip(context,
                refNo: 'Ref #SJX8765',
                from: 'EARTH 2.0',
                to: 'MARS',
                iconUrl: 'assets/icons/round_trip.svg',
                logoUrl: 'assets/images/nasalogo.png',
                date: '8/7',
                time: '9.00AM'),
            SizedBox(height: height * 0.03),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Popular Destinations',
                    style: TextStyles.subtopicText)),
            Container(
              height: height * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  popularDestination(context, 'Venus',
                      'assets/images/planet1.png', '0.5 Light Years'),
                  popularDestination(context, 'Earth',
                      'assets/images/earth.png', '0.5 Light Years'),
                  popularDestination(context, 'Earth',
                      'assets/images/earth.png', '0.5 Light Years'),
                  popularDestination(context, 'Earth',
                      'assets/images/earth.png', '0.5 Light Years'),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Image.asset('assets/images/promo.png', width: width * 0.8),
          ],
        ),
      ),
      floatingActionButton: bookFlight(context),
    );
  }
}
