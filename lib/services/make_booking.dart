
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/booking.dart';
import '../../models/trip.dart';
import '../../models/enums/craft_type.dart';
import '../models/enums/cabin_type.dart';
import '../models/ticket.dart';

class MakeBooking {

  MakeBooking ({this.booking, String userId = "u001"});

  CollectionReference bookings =
    FirebaseFirestore.instance.collection("PURCHASES");

  Timestamp dateNow = Timestamp.now();

  Booking? booking; // where it gets assigned

  Future<void> addPurchase({Timestamp? dateNow, userId}) {

    return bookings
      .add({
          'date': dateNow, 
          'no_of_tickets': 3,//booking.tickets.length, 
          'purchase_invoice': 'D5rGHbwhmduiIbOiZCdB',
          'tickets' : 'booking.tickets.toString()',
          'total_amount' : ' booking.tickets',
          'user_id' : userId 
          
        })
        .then((value) => print("Purchase Added"))
        .catchError((error) => print("Failed to add purchase: $error"));
  }
}