
import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference flights =
        FirebaseFirestore.instance.collection("FLIGHTS");

Future<void> getFlights() {
  // Call the user's CollectionReference to add a new user
  return flights.get().then((event) {
    for (var doc in event.docs) {
      print("${doc.id} => ${doc.data()}");
    }
  })
  .then((value) => print("Got flight"))
          .catchError((error) => print("Failed to retrieve flight: $error"));
}