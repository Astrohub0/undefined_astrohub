import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanetSummary extends StatelessWidget {

  const PlanetSummary({
    super.key,
    required this.context,
    required this.planetImageURL,
    required this.planetName,
    required this.planetDescription,
  });

  final BuildContext context;
  final String planetImageURL;
  final String planetName;
  final String planetDescription;

  @override
  Widget build(BuildContext context) {
    // i want a card component without a border which left hand in a column displays title and description
    // right hand column displays the image
    return Container(
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planetName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  planetDescription,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(planetImageURL),
          ),
        ],
      ),
    );
  }
}
