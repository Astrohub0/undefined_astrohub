import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/widgets/global/glass_text_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../../models/passenger.dart';
import '../../models/passengerFieldDto.dart';

class TravellerDetailsCard extends StatefulWidget {
  TravellerDetailsCard({
    super.key,
    required this.travellerType,
    required this.travellerCount,
    required this.onPassengerDetailsUpdated,
  });

  final String travellerType;
  final int travellerCount;
  final List<Passenger> passengers = [];
  final List<PassengerFieldDto> passengerDtos = [];
  final Function onPassengerDetailsUpdated;

  @override
  State<TravellerDetailsCard> createState() => _TravellerDetailsCardState();
}

class _TravellerDetailsCardState extends State<TravellerDetailsCard> {
   String LastName = '';
    String FirstName = '';
  bool validatePassengerDetails() {
    for (var passenger in widget.passengers) {
      if (passenger.firstName == "" || passenger.lastName == "") {
        return false;
      }
    }
    return true;
  }

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.travellerCount; i++) {
      widget.passengers.add(Passenger(
        id: "${DateTime.now().millisecondsSinceEpoch}",
        firstName: "",
        lastName: "",
        passengerType: widget.travellerType,
      ));
    }

    for (var passenger in widget.passengers) {
      widget.passengerDtos.add(PassengerFieldDto(
        id: passenger.id!,
        firstNameIsDirty: false,
        lastNameIsDirty: false,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                    widget.travellerType,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    " - ${widget.travellerCount}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(width: 10),
                  widget.travellerType == "Adult"
                      ? const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20,
                        )
                      : const Icon(
                          Icons.child_care,
                          color: Colors.white,
                          size: 20,
                        ),
                ],
              ),
              const SizedBox(height: 10),
              for (var passenger in widget.passengers)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Passenger ${passenger.id}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GlassMorphTextCard(
                        text: "First name",
                        onTextValueChange: (value) {
                          widget.passengers
                              .firstWhere(
                                  (element) => element.id == passenger.id)
                              .firstName = value;
                          widget.passengerDtos
                              .firstWhere(
                                  (element) => element.id == passenger.id)
                              .firstNameIsDirty = true;
                          setState(() {});
                          widget.onPassengerDetailsUpdated({
                            "isValid": validatePassengerDetails(),
                            "passengerDetails": widget.passengers,
                          });
                        }),
                    const SizedBox(height: 5),
                    if (widget.passengerDtos
                            .firstWhere((element) => element.id == passenger.id)
                            .firstNameIsDirty &&
                        widget.passengers
                                .firstWhere(
                                    (element) => element.id == passenger.id)
                                .firstName ==
                            "")
                      Text(
                        "Please enter a  valid first name",
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    const SizedBox(height: 10),
                    GlassMorphTextCard(
                        text: "Last name/Family",
                        onTextValueChange: (value) {
                          widget.passengers
                              .firstWhere(
                                  (element) => element.id == passenger.id)
                              .lastName = value;
                          widget.passengerDtos
                              .firstWhere(
                                  (element) => element.id == passenger.id)
                              .lastNameIsDirty = true;
                          setState(() {});
                          widget.onPassengerDetailsUpdated({
                            "isValid": validatePassengerDetails(),
                            "passengerDetails": widget.passengers,
                          });
                        }),
                    const SizedBox(height: 5),
                    if (widget.passengerDtos
                            .firstWhere((element) => element.id == passenger.id)
                            .lastNameIsDirty &&
                        widget.passengers
                                .firstWhere(
                                    (element) => element.id == passenger.id)
                                .lastName ==
                            "")
                      Text(
                        "Please enter a  valid last name",
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
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
