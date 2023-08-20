import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/widgets/global/glass_text_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../../models/passenger.dart';

class TravellerDetailsCard extends StatelessWidget {

  const TravellerDetailsCard({
    super.key,
    required this.travellerType,
    required this.travellerCount,
    required this.passengers,
  });

  final String travellerType;
  final String travellerCount;
  // array of Passengers
  final List<Passenger> passengers;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // this is a glass morphic card which has a user icon on the left and the traveller type and count on the right
    // followed by passenger details for each passenger where for each passenger the passenger # is followed by last/family name and first/given name
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GlassmorphicContainer(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    travellerType,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    " - $travellerCount",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(width: 10),
                  // add a user icon
                  travellerType == "Adult" ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ) : const Icon(
                    Icons.child_care,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              for (var i = 0; i < passengers.length; i++)
                Column (
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Passenger ${i+1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GlassMorphTextCard(text: passengers[i].name??"First name"),
                    const SizedBox(height: 10),
                    GlassMorphTextCard(text: passengers[i].name??"Last name/Family"),
                    const SizedBox(height: 5),
                    // if not the last passenger, add a divider
                    if (i != passengers.length - 1)
                      Column(
                        children: [
                          Container(
                            width: width * 0.7,
                            height: 0.8,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
