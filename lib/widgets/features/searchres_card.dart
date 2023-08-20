import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/screens/flight_details.dart';
import 'package:astro_hub/utils/get_label_color.dart';
import 'package:astro_hub/widgets/global/class_label.dart';
import 'package:astro_hub/widgets/global/company_label.dart';
import 'package:flutter/material.dart';
import 'package:astro_hub/utils/router.dart';
import '../../constants/image_paths.dart' as image_paths;

Widget searchResult(
  BuildContext context,
  //for parameters we can pass data about two planets as two objects(key value pairs)
  Map<String, dynamic>? planet1,
  Map<String, dynamic>? planet2,
  List<String>? airlines,
  String? className,
  String? price,
) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  // Default values for the parameters
  planet1 ??= {
    'imgUrl': 'assets/images/miniearth.png',
    'name': "Earth",
    'time': "12:00",
    'date': "12 Aug"
  };
  planet2 ??= {
    'imgUrl': 'assets/images/minimars.png',
    'name': "Mars",
    'time': "4:00",
    'date': "19 Feb"
  };
  airlines ??= [];
  className ??= 'Economy';
  price ??= '5800.97';
  return GestureDetector(
    onTap: () {
       PageNavigator(context: context).nextPage( FlightDetails());
    },
    child: Container(
        width: width * 0.9,
        height: height * 0.36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white.withOpacity(0.20)),
          gradient: const LinearGradient(
            begin: Alignment(0.59, 0.80),
            end: Alignment(-0.59, -0.8),
            colors: [
              Color.fromRGBO(255, 255, 255, 0.05),
              Color.fromRGBO(255, 255, 255, 0.05)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/miniearth.png', width: 60),
                      Text(
                        planet1['name'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        planet1['time'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        planet1['date'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const Text(
                        '(Mon)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )
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
                      Image.asset(planet2['imgUrl'], width: 60),
                      Text(
                        planet2['name'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        planet2['time'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        planet2['date'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const Text(
                        '(Tue)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //for now I hard coded this cz not sure if we can implement this in backend
                      companyLabel('NASA', 'assets/images/nasalogo.png'),
                      companyLabel('GALAXY', 'assets/images/galaxylogo.png'),
                      companyLabel('STARFLEET', 'assets/images/spacelogo.png'),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    classLabel(getColorByClassName(className), className),
                    const SizedBox(height: 5),
                     Text(
                      '$price \$',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.31,
                      ),
                    ),
                    
                  ]),
                ],
              ),
            ],
          ),
        )),
  );
}
