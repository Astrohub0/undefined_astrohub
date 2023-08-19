import 'package:astro_hub/screens/home.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/common_tabbar.dart';
import 'package:flutter/material.dart';
import '../constants/icon_paths.dart' as icons;

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
          tab1Widget: Home(),
          tab2Widget: Home(),
          tab3Widget: Home(),
          tab1img: icons.roundTrip,
          tab2img: icons.oneWay,
          tab3img: icons.multiPlanet
      )
    );
  }
}
