
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/booking.dart';
import '../../models/trip.dart';
import '../../models/enums/craft_type.dart';
import '../models/enums/cabin_type.dart';

class Booking {

  CollectionReference bookings =
    FirebaseFirestore.instance.collection("PURCHASES");

  Timestamp dateNow=Timestamp.now();

  final purchase = {

  };

  // Future<void> addPurchase({Timestamp? dateNow, }) {

  //   return bookings
  //     .add({
  //         'full_name': fullName, // John Doe
  //         'company': company, // Stokes and Sons
  //         'age': age // 42
  //       })
  //       .then((value) => print("Purchase Added"))
  //       .catchError((error) => print("Failed to add purchase: $error"));
  // }
}