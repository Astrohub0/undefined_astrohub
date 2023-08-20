import 'package:astro_hub/widgets/features/recent_trip_card.dart';
import 'package:astro_hub/widgets/global/book_btn.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/navbar.dart';
import 'package:flutter/material.dart';

class RecentTrips extends StatefulWidget {
  const RecentTrips({Key? key}) : super(key: key);

  @override
  RecentTripsState createState() => RecentTripsState();
}

class RecentTripsState extends State<RecentTrips> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: CommonAppBar(title: 'RECENT TRIPS', isBackButton: true),
      endDrawer: NavBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        width: width * 8,
        child: ListView(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            RecentTrip(context, 'assets/images/planet6.png',
                'assets/images/planet7.png', 'Zephriya', 'Barbie', 'Economy'),
            SizedBox(
              height: height * 0.02,
            ),
            RecentTrip(context, 'assets/images/planet9.png',
                'assets/images/planet8.png', 'Earth', 'Barbie', 'Business'),
            SizedBox(height: height * 0.02),
            RecentTrip(context, 'assets/images/planet6.png',
                'assets/images/planet5.png', 'Earth', 'Barbie', 'First Class'),
          ],
        ),
      ),
      floatingActionButton: bookFlight(context),
    ));
  }
}
