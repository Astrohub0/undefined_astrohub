import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/utils/get_label_color.dart';
import 'package:astro_hub/widgets/global/class_label.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget RecentTrip(context, String image1Url, String image2Url, String title1,
    String title2,String classtype) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return GlassmorphicContainer(
    alignment: Alignment.topCenter,
    width: width * 0.93,
    height: height * 0.19,
    blur: 50,
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
      colors: [
        Color.fromRGBO(255, 255, 255, 0.05),
        Color.fromRGBO(255, 255, 255, 0.05)
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 1.0, right: 1.0),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                    image1Url,
                    width: 90,
                  ),
                  Text(
                    title1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '24th July 2203',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 12,
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    image2Url,
                    width: 90,
                  ),
                  Text(
                    title2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    '24th July 2203',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                width: width * 0.42,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TRAVEL MODE', style: TextStyles.keytext),
                        Text('One way', style: TextStyles.valueText)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CLASS', style: TextStyles.keytext),
                        classLabel(getColorByClassName(classtype), classtype)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TOTAL DISTANCE', style: TextStyles.keytext),
                        Text('One month', style: TextStyles.valueText)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ACCOMADATION', style: TextStyles.keytext),
                        Text('Craft Cabin', style: TextStyles.valueText)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CRAFT ID', style: TextStyles.keytext),
                        Text('SpaceX 1002EEDA', style: TextStyles.valueText)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: height * 0.11, left: width * 0.65),
              child: Container(
                padding: const EdgeInsets.only(right: 5, top: 8.0),
                width: 100,
                height: 45,
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(38, 255, 255, 255),

                    elevation: 5, // Elevation (shadow)
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Border radius
                      side:
                          const BorderSide(color: Colors.white), // Border color
                    ),
                  ),
                  child: const Text(
                    'Make Template',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )),
        ],
      ),
    ),
  );
}
