import '../../models/trip.dart';
import '../../models/ticket.dart';
import 'enums/passenger_type.dart';

// for one ticket
class Booking{

  Booking({this.referenceNo});
  
  String? referenceNo = "";
  // Trip? trip;
  List<Ticket>? tickets;

}