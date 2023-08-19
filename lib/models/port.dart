import '../../models/enums/solar_system.dart';
import '../../models/enums/day.dart';

class Port{

  Port({this.portCode,this.portName});

  String? portCode = "";
  String? portName = "";
  String? portThumbnail = "";
  String? portDescription = "";
  SolarSystem solarSystem = SolarSystem.local;
  String? timeZone = "";
  Day? day = Day.monday;  
}