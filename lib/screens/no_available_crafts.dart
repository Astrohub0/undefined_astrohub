import 'package:astro_hub/screens/book_round_trip.dart';
import 'package:astro_hub/utils/router.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/navbar.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/material.dart';
import '../constants/image_paths.dart' as image_paths;

class NoAvailableCrafts extends StatelessWidget {
  const NoAvailableCrafts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(
          title: 'Select a craft',
          isBackButton: true,
        ),
        drawer: NavBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
          // i need a container to display an image, a text and a button one after the other
          child: Column(
            children: [
              // image
              Image.asset('assets/images/businessImg.png'),
              Text(
                'Booking Successfull',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              // text
              Text(
                'You will receive a confirmation email shortly.',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              // add a sized box
              SizedBox(height: height * 0.05),
              // button
              primaryButton(context, 'Back to Home', onPressed: () {
                PageNavigator(context: context).nextPage(BookRoundTrip());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
