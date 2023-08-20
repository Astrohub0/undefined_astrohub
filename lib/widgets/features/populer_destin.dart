import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget popularDestination(
    BuildContext context, String? planet, String? imgUrl, String? distance) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  //ddefault values
  planet ??= 'Venus';
  imgUrl ??= 'assets/planet1.png';
  distance ??= '0.5 light years';
  return SizedBox(
    width: width * 0.68,
    height: height * 0.23,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
            top: -50,
            bottom: 0,
            right: -160,
            left: 0,
            child: Image.asset(imgUrl)),
        GlassmorphicContainer(
            width: width * 0.5,
            height: height * 0.18,
            blur: 30,
            border: 2,
            borderGradient: const LinearGradient(
              begin: Alignment(0.59, 0.80),
              end: Alignment(-0.59, -0.8),
              colors: [
                Color.fromRGBO(255, 255, 255, 0.05),
                Color.fromRGBO(255, 255, 255, 0.05)
              ],
            ),
            borderRadius: 16.0,
            linearGradient: const LinearGradient(
              begin: Alignment(0.59, 0.80),
              end: Alignment(-0.59, -0.8),
              colors: [Color(0x4C4C4C4C), Color(0x0C181818)],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    planet,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    distance,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero), // Removes padding
                        ),
                        onPressed: (() {}),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Search flights',
                              style: TextStyle(
                                color: Color(0xFF4CFF5E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.double_arrow_rounded,
                              color: Color(0xFF4CFF5E),
                              size: 14,
                            )
                          ],
                        )),
                  )
                ],
              ),
            )),
        Positioned(
            top: -50,
            bottom: 0,
            right: -160,
            left: 0,
            child: Image.asset(imgUrl)),
      ],
    ),
  );
}
