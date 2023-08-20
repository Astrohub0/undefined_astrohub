import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/passenger.dart';
import 'package:astro_hub/widgets/features/traveller_details_card.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravellerDetails extends StatelessWidget {
  TravellerDetails({super.key});

  // inintialze a set of passengers
  final List<Passenger> passengers = [
    Passenger (
      id: "11A",
      name: "John Doe",
      passengerType: "Adult",
    ),
    Passenger (
      id: "11B",
      name: "Jane Doe",
      passengerType: "Adult",
    ),
    Passenger (
      id: "11C",
      name: "John Doe Jr.",
      passengerType: "Infant",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(
          title: "Traveller Details",
          isBackButton: true,
        ),
        body: Container(
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              // filter the passengers by type for Aduilt take 0.3 height of the screen
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: TravellerDetailsCard(
                  travellerType: "Adult",
                  travellerCount: passengers.where((element) => element.passengerType == "Adult").length.toString(),
                  passengers: passengers.where((element) => element.passengerType == "Adult").toList(),
                ),
              ),
              const SizedBox(height: 20,),
              // filter the passengers by type for Infant
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: TravellerDetailsCard(
                  travellerType: "Infant",
                  travellerCount: passengers.where((element) => element.passengerType == "Infant").length.toString(),
                  passengers: passengers.where((element) => element.passengerType == "Infant").toList(),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text (
                     "Booking Details",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.utilitySolidYellow,
                      ),
                      child: Column(
                        children: [
                          // text for Adults adult count and infant count
                          Text (
                            "Adults: ${passengers.where((element) => element.passengerType == "Adult").length.toString()}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 2,),
                          Text (
                            "Infants: ${passengers.where((element) => element.passengerType == "Infant").length.toString()}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              primaryButton(context, "CONTINUE", onPressed: () {})
            ],
          ),
        ),
      )
    );
  }
}
