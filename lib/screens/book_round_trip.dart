import 'package:astro_hub/models/enums/trip_type.dart';
import 'package:astro_hub/screens/home.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/common_tabbar.dart';
import 'package:flutter/material.dart';

class BookRoundTrip extends StatefulWidget {
  const BookRoundTrip({Key? key}) : super(key: key);

  @override
  BookRoundTripState createState() => BookRoundTripState();
}

class BookRoundTripState extends State<BookRoundTrip> {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
        appBar: CommonAppBar(title: 'Book A Trip', isBackButton: true),
        body: CommonTabbar(
            tab1: 'Round Trip',
            tab2: 'One Way',
            tab3: 'Multi Planet',
            tab1Widget: Home(tripType: 'Round Trip',),
            tab2Widget: Home(tripType: 'One Way',),
            tab3Widget: Home(tripType: 'Multi Planet',),
            tab1img: 'assets/icons/round_trip.svg',
            tab2img: 'assets/icons/one_way.svg',
            tab3img: 'assets/icons/multi_planet.svg'));
  }
}
