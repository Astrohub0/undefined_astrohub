import '../../models/planet.dart';
import '../../models/spaceline.dart';
import 'enums/cabin_type.dart';
import 'enums/trip_type.dart';

// for result loading from search
// to be carried on after selecting
class Trip{

  Trip({this.tripCode}) {
    if (isDiscounted) {
      discountedPrice = price;
    }
  }
  
  String? tripCode = "";
  int? noOfStops = 1;
  Planet? planetFrom;
  Planet? planetTo;
  TripType tripType = TripType.round;
  List<CabinType> cabinType = [CabinType.Economy,CabinType.Business];
  List<SpaceLine>? spaceline;
  bool isDiscounted = false;
  double? price;
  double? discountedPrice;

}