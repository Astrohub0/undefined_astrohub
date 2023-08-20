
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/trip.dart';
import '../../models/enums/craft_type.dart';
import '../models/enums/cabin_type.dart';

CollectionReference flights =
        FirebaseFirestore.instance.collection("FLIGHTS");

Future<void> getFlights({String fromPort = "EARTH-007",String toPort = "MARS-001",
  CraftType shuttleType = CraftType.Cruise, CabinType cabinType = CabinType.Economy,
  int noOfPassengers = 1}) {

    String neededSeatsType = "availabe_econ_seats";

    if ( cabinType == CabinType.Business) {
      neededSeatsType = "availabe_business_seats";
    }

    return flights
      .where("from_port",isEqualTo:fromPort)
      .where("to_port",isEqualTo:toPort)
      .where("craft.craft_type",isEqualTo:shuttleType.toString().split('.').last)
      .where(neededSeatsType,isGreaterThanOrEqualTo:noOfPassengers)
        .get().then((event) {
          for (var doc in event.docs) {
            print("${doc.id} => ${doc.data()}");
          }
        })
      .then((value) => print("Got flight"))
        .catchError((error) => print("Failed to retrieve flight: $error"));
}