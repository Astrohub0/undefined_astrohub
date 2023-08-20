import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/screens/service_details.dart';
import 'package:astro_hub/utils/get_label_color.dart';
import 'package:astro_hub/utils/router.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/company_label.dart';
import 'package:astro_hub/widgets/global/flight_requirement_tile.dart';
import 'package:astro_hub/widgets/global/journey_path.dart';
import 'package:astro_hub/widgets/global/local_attractions_section.dart';
import 'package:astro_hub/widgets/global/planet_description_summary.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../services/get_flights.dart';

class FlightDetails extends StatelessWidget {
  FlightDetails({super.key});

  final planet1 = {
    'imgUrl': 'assets/images/miniearth.png',
    'name': "Earth",
    'time': "2:00",
    'date': "19 Feb"
  };
  final planet2 = {
    'imgUrl': 'assets/images/minimars.png',
    'name': "Mars",
    'time': "4:00",
    'date': "19 Feb"
  };

  final price = '5800.97';
  final className = "Economy";

  final planetDescription =
      "Discover Planet Zephyria, where lush landscapes, breathable atmosphere, and mild weather beckon explorers to settle. Pack your dreams and embark on a journey to an amazing planet.";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(title: "Flight Details", isBackButton: true),
        drawer: Drawer(),
        body: 
          GlassmorphicContainer(
            width: width,
            height: height,
            borderRadius: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            linearGradient: AppGradients.glassInputGradient,
            border: 0.5,
            blur: 50,
            borderGradient: const LinearGradient(
              begin: Alignment(0.59, 0.80),
              end: Alignment(-0.59, -0.8),
              colors: [
                Color(0x4AFFFFFF),
                Color(0x0AFFFFFF),
              ],
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    JourneyPath(
                        planet1: planet1,
                        planet2: planet2,
                        airlines: ['SpaceX', 'NASA'],
                        className: 'Economy',
                        price: '5800.97'),
                    const SizedBox(height: 20),
                    // horizontal line
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //for now I hard coded this cz not sure if we can implement this in backend
                              companyLabel('NASA', 'assets/images/nasalogo.png'),
                              companyLabel(
                                  'GALAXY', 'assets/images/galaxylogo.png'),
                              companyLabel(
                                  'STARFLEET', 'assets/images/spacelogo.png'),
                            ],
                          ),
                        ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 1,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    // have a horizontally scrollable row
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlightRequirementTile(
                              imageUrl: "assets/images/helmet.png",
                              title: "Required Head Gear"),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          FlightRequirementTile(
                              imageUrl: "assets/images/helmet.png",
                              title: "Required Head Gear"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  PlanetSummary(
                      context: context,
                      planetImageURL: "assets/images/planet3.png",
                      planetName: "Zephyria",
                      planetDescription: planetDescription),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 1,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: LocalAttractionsSection(imageURLs: [
                        "assets/images/local_attraction1.png",
                        "assets/images/local_attraction2.png",
                        "assets/images/local_attraction3.png",
                      ])),
                  // have a container that has a row
                  const SizedBox(height: 40),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price ?? "5800.97 \$",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            decoration: BoxDecoration(
                              color: getColorByClassName(className),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              className,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  primaryButton(context, 'CONTINUE', onPressed: () {
                    PageNavigator(context: context).nextPage(ServiceDetails());
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
