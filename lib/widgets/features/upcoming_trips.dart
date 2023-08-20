import 'dart:ui';
import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget upcomingTrip(
  BuildContext context, {
  required String refNo,
  required String from,
  required String to,
  required String iconUrl,
  required String logoUrl,
  required String date,
  required String time,
}) {
  final width = MediaQuery.of(context).size.width;
  return ClipRRect(
    borderRadius: BorderRadius.circular(6.0),
    child: Container(
      width: width * 0.8,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
      ),
      child: Stack(
        children: [
          //Blur Effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Container(),
          ),
          //Gradient Effect
          Container(
            decoration: const BoxDecoration(
                gradient: RadialGradient(
              center: Alignment(1.0, 0.0),
              radius: 5.290030, // This value is equivalent to 52900.30%
              colors: [
                Color.fromRGBO(14, 139, 211, 0.20),
                Color.fromRGBO(24, 129, 188, 0.20),
                Color.fromRGBO(44, 129, 255, 0.20),
                Color.fromRGBO(14, 139, 211, 0.12),
              ],
            )),
          ),
          //Child
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: 6,
              color: const Color(0xFF0E8BD3),
            ),
            IconButton(
                onPressed: (() {}), icon: Image.asset(logoUrl, width: 40)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(refNo, style: TextStyles.refnostyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      from,
                      style: TextStyles.upcomingtripsPlanet,
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      iconUrl,
                    ),
                    const SizedBox(width: 10),
                    Text(to, style: TextStyles.upcomingtripsPlanet),
                  ],
                ),
                Row(
                  children: [
                    Text(date, style: TextStyles.upcomingtripsDate),
                    const SizedBox(width: 10),
                    Text(time, style: TextStyles.upcomingtripsDate)
                  ],
                )
              ],
            ),
            const Spacer(),
            TextButton(
              onPressed: (() {}),
              child: const Text(
                'View',
                textAlign: TextAlign.right,
                style: TextStyles.greenBold
              ),
            )
          ]),
        ],
      ),
    ),
  );
}
