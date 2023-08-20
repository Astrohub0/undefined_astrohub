import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/passenger.dart';
import 'package:astro_hub/screens/service_details.dart';
import 'package:astro_hub/utils/router.dart';
import 'package:astro_hub/widgets/features/traveller_details_card.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/navbar.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravellerDetails extends StatefulWidget {
  TravellerDetails(
      {super.key, this.noOfAdultSeats = 2, this.noOfInfantSeats = 1, required this.spaceTravelInfo});

  final noOfAdultSeats;
  final noOfInfantSeats;
  final spaceTravelInfo;

  @override
  State<TravellerDetails> createState() => _TravellerDetailsState();
}

class _TravellerDetailsState extends State<TravellerDetails> {
  bool isPassengerDetailsValid = false;
  List<Passenger> passengers = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      endDrawer: NavBar(),
      appBar: CommonAppBar(
        title: "Traveller Details",
        isBackButton: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            // filter the passengers by type for Aduilt take 0.3 height of the screen
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: TravellerDetailsCard(
                travellerType: "Adult",
                travellerCount: widget.noOfAdultSeats,
                onPassengerDetailsUpdated: (passengerDetails) {
                  isPassengerDetailsValid = passengerDetails["isValid"]!;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // filter the passengers by type for Infant
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: TravellerDetailsCard(
                travellerType: "Infant",
                travellerCount: widget.noOfInfantSeats,
                onPassengerDetailsUpdated: (passengerDetails) {
                  isPassengerDetailsValid = passengerDetails["isValid"]!;
                  print(passengerDetails);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Booking Details",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.utilitySolidYellow,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Adults: ${widget.noOfAdultSeats}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Infants: ${widget.noOfInfantSeats}",
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
            const SizedBox(
              height: 20,
            ),
            primaryButton(context, "CONTINUE", onPressed: () {
              // widget.spaceTravelInfo.passengers = passengers;
              print(widget.spaceTravelInfo.passengers);
              if (isPassengerDetailsValid) {
                PageNavigator(context: context).nextPage(ServiceDetails(spaceTravelInfo: widget.spaceTravelInfo));
              }
            })
          ],
        ),
      ),
    ));
  }
}
