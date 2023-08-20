import '../../models/trip.dart';
import '../../models/ticket.dart';
import 'enums/passenger_type.dart';

// for one ticket
class Booking{

  Booking({this.referenceNo}) {

    totalAmount = calculateTotalPrice( );
    if(totalAmount > 0) {
      print("Error purchasing tickets");
    }

  }
  
  String? referenceNo = "";
  List<Ticket>? tickets;

  double totalAmount = 0;

  double calculateTotalPrice( ) {

    double totalPrice = 0;

    if(tickets!.isNotEmpty ) {
      for ( Ticket ticket in tickets!) {
        // Add the price of the ticket to the total price.
        totalPrice += ticket.ticketPrice;
      }

    // Return the total price.
      return totalPrice;
    }

    return -1;
  }
}