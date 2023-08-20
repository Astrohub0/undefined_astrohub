import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightRequirementTile extends StatelessWidget {

  const FlightRequirementTile({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    // i need this to be a square card with a white border with the image followed by the title
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
