import 'package:astro_hub/models/travel_data.dart';
import 'package:astro_hub/screens/book_round_trip.dart';
import 'package:astro_hub/screens/search_results.dart';
import 'package:astro_hub/widgets/features/searchres_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../models/trip.dart';
import '../../models/enums/craft_type.dart';
import '../models/enums/cabin_type.dart';

class GetFlights {
  CollectionReference flights =
      FirebaseFirestore.instance.collection("FLIGHTS");

  Future<void> getFlights(
      {required BuildContext context,
      String fromPort = "EARTH-007",
      String toPort = "MARS-001",
      CraftType shuttleType = CraftType.Cruise,
      CabinType cabinType = CabinType.Economy,
      int noOfPassengers = 1}) {
    String neededSeatsType = "availabe_econ_seats";

    if (cabinType == CabinType.Business) {
      neededSeatsType = "availabe_business_seats";
    }

    return flights
        .where("from_port", isEqualTo: fromPort)
        .where("to_port", isEqualTo: toPort)
        .where("craft.craft_type",
            isEqualTo: shuttleType.toString().split('.').last)
        .where(neededSeatsType, isGreaterThanOrEqualTo: noOfPassengers)
        .get()
        .then((event) {
          for (var doc in event.docs) {
            SpaceTravelInfo flightData = SpaceTravelInfo.fromJson(
              doc.data() as Map<String, dynamic>,
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookRoundTrip(),
              ),
            );
          }
        })
        .then((value) => print("Got flight"))
        .catchError((error) => print("Failed to retrieve flight: $error"));
  }
}
