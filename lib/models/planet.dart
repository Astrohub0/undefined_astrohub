import '../../models/enums/solar_system.dart';
import '../../models/enums/day.dart';

class Planet{

  Planet({this.planetCode,this.planetName});

  String? planetCode = "";
  String? planetName = "";
  String? planetThumbnail = "";
  String? planetDescription = "";
  SolarSystem solarSystem= SolarSystem.local;
  String? timeZone = "";
  Day? day = Day.monday;  
}
