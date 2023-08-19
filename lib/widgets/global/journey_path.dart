import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JourneyPath extends StatelessWidget {

  const JourneyPath({
    super.key,
    required this.planet1,
    required this.planet2,
    required this.airlines,
    required this.className,
    required this.price,
  });

  final Map<String, dynamic>? planet1;
  final Map<String, dynamic>? planet2;
  final List<String>? airlines;
  final String? className;
  final String? price;

  @override
  Widget build(
      BuildContext context
      ) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/miniearth.png', width: 60),
              Text(
                planet1!['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                planet1!['date'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),

          Container(
            padding: const EdgeInsets.only(top: 15),
            width: width * 0.18,
            child: const Divider(
              thickness: 2,
              color: AppColors.primarySolid01,
            ),
          ),
          Image.asset('assets/images/minirocket.png', width: 50),
          Container(
            padding: const EdgeInsets.only(top: 15),
            width: width * 0.18,
            child: const Divider(
              thickness: 2,
              color: AppColors.primarySolid01,
            ),
          ), // Adjust the space between the line and icon
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(planet2!['imgUrl'], width: 60),
              Text(
                planet2!['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                planet2!['date'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
