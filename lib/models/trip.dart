import '../../models/planet.dart';
import '../../models/spaceline.dart';
import '../../models/enums/shuttle_type.dart';

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
  List<CabinType> cabinType = [CabinType.Economy,CabinType.Business];
  List<SpaceLine>? spaceline;
  bool isDiscounted = false;
  double? price;
  double? discountedPrice;

}