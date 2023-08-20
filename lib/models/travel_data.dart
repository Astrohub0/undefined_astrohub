class SpaceTravelInfo {
  final Map<String, dynamic> ticketPrices;
  final int availableEconSeats;
  final String spaceline;
  final Map<String, dynamic> spacecraftAttributes;
  final String spacecraftId;
  final Map<String, dynamic> craft;
  final int totalDistance;
  final String toPort;
  final int availableBusinessSeats;
  final String fromPort;

  SpaceTravelInfo({
    required this.ticketPrices,
    required this.availableEconSeats,
    required this.spaceline,
    required this.spacecraftAttributes,
    required this.spacecraftId,
    required this.craft,
    required this.totalDistance,
    required this.toPort,
    required this.availableBusinessSeats,
    required this.fromPort,
  });

  factory SpaceTravelInfo.fromJson(Map<String, dynamic> json) {
  return SpaceTravelInfo(
    ticketPrices: (json['ticket_prices'] as Map<String, dynamic>) ?? {},
    availableEconSeats: (json['availabe_econ_seats'] as int) ?? 0,
    spaceline: (json['spaceline'] as String) ?? '',
    spacecraftAttributes: (json['spacecraft_attributes'] as Map<String, dynamic>) ?? {},
    spacecraftId: (json['spacecraft_id'] as String) ?? '',
    craft: (json['craft'] as Map<String, dynamic>) ?? {},
    totalDistance: (json['total_distance'] as int) ?? 0,
    toPort: (json['to_port'] as String) ?? '',
    availableBusinessSeats: (json['availabe_business_seats'] as int) ?? 0,
    fromPort: (json['from_port'] as String) ?? '',
  );
}
}
