class PassengerFieldDto {

  PassengerFieldDto({
    required this.id,
    required this.firstNameIsDirty,
    required this.lastNameIsDirty,
  });


  String id;
  bool firstNameIsDirty;
  bool lastNameIsDirty;
}