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

    return Scaffold(
        appBar: CommonAppBar(title: 'Book A Trip', isBackButton: true),
        body: const CommonTabbar(
            tab1: 'Round Trip',
            tab2: 'One Way',
            tab3: 'Multi Planet',
            tab1Widget: Home(),
            tab2Widget: Home(),
            tab3Widget: Home(),
            tab1img: 'assets/icons/round_trip.svg',
            tab2img: 'assets/icons/one_way.svg',
            tab3img: 'assets/icons/multi_planet.svg'));
  }
}
