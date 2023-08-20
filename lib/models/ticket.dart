import '../../models/trip.dart';
import 'enums/passenger_type.dart';
import 'enums/cabin_type.dart';

// for one ticket ; a booking is a combination of one more tickets
class Ticket{

  Ticket({this.ticketID});
  
  String? ticketID = "";
  String? craftCode = "";
  PassengerType ticketType = PassengerType.Adult;
  CabinType ticketClass = CabinType.Economy;
  // String fromPort = "MARS-007";
  // String? seatNo = "E12";
  Trip? trip; // from port and to port extracted from here
  bool isExtraLuggagePurchased = false;
  int extraLuggage = 0;
  bool isTicketDiscounted = false;
  double ticketPrice = 0.00;

}