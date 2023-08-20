import 'package:astro_hub/screens/amex.dart';
import 'package:astro_hub/screens/home.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/common_tabbar.dart';
import 'package:astro_hub/widgets/global/glass_text_card.dart';
import 'package:astro_hub/widgets/global/navbar.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            appBar: CommonAppBar(title: 'CHECKOUT', isBackButton: true),
            body: CommonTabbar(
                tab1: 'Round Trip',
                tab2: 'One Way',
                tab3: 'Multi Planet',
                tab1Widget: Amex(),
                tab2Widget: Text('jhghh'),
                tab3Widget: Text('hhmb hm'),
                tab1img: 'assets/icons/round_trip.svg',
                tab2img: 'assets/icons/one_way.svg',
                tab3img: 'assets/icons/multi_planet.svg')));
  }
}
