import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/enums/craft_type.dart';
import 'package:astro_hub/screens/search_departure.dart';
import 'package:astro_hub/screens/search_results.dart';
import 'package:astro_hub/screens/traveller_details.dart';
import 'package:astro_hub/utils/router.dart';
import 'package:astro_hub/models/enums/cabin_type.dart';
import 'package:astro_hub/widgets/features/departure.dart';
import 'package:astro_hub/widgets/features/departure_date.dart';
import 'package:astro_hub/widgets/global/common_number_input.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.tripType, required this.onSelection})
      : super(key: key);
  final String tripType;
  final Function onSelection;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  CraftType selectedCraftType = CraftType.Cruise; // Default selected type
  CabinType selectedCabinType = CabinType.Economy; // Default selected type
  String promoCode = '';
  int numberOfPassengers = 0;

  Map<String, String> departureData = {
    'imgUrl': '',
    'port': '',
    'description': ''
  }; // Default selected type
  Map<String, String> arrivalData = {
    'imgUrl': '',
    'port': '',
    'description': ''
  }; // Default selected type
  Map<String, DateTime> arrivalDates = {
    'fromDate': DateTime.now(),
    'toDate': DateTime.now()
  };
  Map<String, DateTime> depatureDates = {
    'fromDate': DateTime.now(),
    'toDate': DateTime.now()
  };

  void handleDepature(String imgUrl, String title, String subtitle) {
    // This function will be called when an item is selected in SearchDeparture
    // You can perform actions here with the selected data
    setState(() {
      departureData['imgUrl'] = imgUrl;
      departureData['port'] = title;
      departureData['description'] = subtitle;
    });

    print('Selected: imgUrl=$imgUrl, title=$title, subtitle=$subtitle');
  }

  void handleArrival(String imgUrl, String title, String subtitle) {
    // This function will be called when an item is selected in SearchDeparture
    // You can perform actions here with the selected data
    setState(() {
      arrivalData['imgUrl'] = imgUrl;
      arrivalData['port'] = title;
      arrivalData['description'] = subtitle;
    });

    print('Selected: imgUrl=$imgUrl, title=$title, subtitle=$subtitle');
  }

  void arrivalDateSelect(DateTime fromDate, DateTime toDate) {
    // This function will be called when an item is selected in SearchDeparture
    // You can perform actions here with the selected data
    setState(() {
      arrivalDates['fromDate'] = fromDate;
      arrivalDates['toDate'] = toDate;
    });

    print('Selected: From: $fromDate, To: $toDate');
  }

  void departureDateSelect(DateTime fromDate, DateTime toDate) {
    // This function will be called when an item is selected in SearchDeparture
    // You can perform actions here with the selected data
    setState(() {
      depatureDates['fromDate'] = fromDate;
      depatureDates['toDate'] = toDate;
    });

    print('Selected: From: $fromDate, To: $toDate');
  }

  void _onCabinDropdownChanged(CabinType value) {
    setState(() {
      selectedCabinType = value;
    });
  }

  void _onShuttleDropdownChanged(CraftType value) {
    setState(() {
      selectedCraftType = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          child: ListView(children: [
            GestureDetector(
              onTap: () {
                PageNavigator(context: context).nextPage(SearchDeparture(
                  onSelection:
                      handleDepature, // Using the provided onSelection callback
                ));
              },
              child: departure(context,
                  title: 'From',
                  subtitle: 'Select Port of Departure',
                  iconwidget: Transform.rotate(
                    angle: 2.45, //for arrival 3.5
                    child: Container(
                      margin: const EdgeInsets.only(top: 15.0, left: 5.0),
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  )),
            ),
            Text(
              '${departureData['port']} ${departureData['description']}',
              style: TextStyles.bodyText,
            ),
            SizedBox(height: height * 0.02),
            GestureDetector(
              onTap: () {
                PageNavigator(context: context).nextPage(SearchDeparture(
                  onSelection:
                      handleArrival, // Using the provided onSelection callback
                ));
              },
              child: departure(context,
                  title: 'To',
                  subtitle: 'Select Port of Arrival',
                  iconwidget: Transform.rotate(
                    angle: 3.5, //for arrival 3.5
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10.0, left: 5.0),
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  )),
            ),
            Text(
              '${arrivalData['port']} ${arrivalData['description']}',
              style: TextStyles.bodyText,
            ),
            SizedBox(height: height * 0.02),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Departure Date Range',
                    style: TextStyles.subtopicText)),
            SizedBox(height: height * 0.02),
            DepartureDatePick(onSelection: departureDateSelect), //departure
            SizedBox(height: height * 0.02),
            widget.tripType == 'Round Trip'
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Arrival Date Range',
                        style: TextStyles.subtopicText))
                : const SizedBox(),
            SizedBox(height: height * 0.02),
            widget.tripType == 'Round Trip'
                ? DepartureDatePick(onSelection: arrivalDateSelect) //arrival
                : const SizedBox(),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //shuttle drop down
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shuttle Type',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    GlassmorphicContainer(
                      width: width * 0.3,
                      height: height * 0.06,
                      borderRadius: 8.0,
                      linearGradient: AppGradients.glassInputGradient,
                      border: 0.5,
                      blur: 50,
                      borderGradient: const LinearGradient(
                        begin: Alignment(0.59, 0.80),
                        end: Alignment(-0.59, -0.8),
                        colors: [
                          Color(0x4AFFFFFF),
                          Color(0x0AFFFFFF),
                        ],
                      ),
                      child: Container(
                        // Wrap DropdownButton with Container
                        width: width * 0.3,
                        height: height * 0.06,
                        child: DropdownButton<String>(
                          dropdownColor: const Color(0xFF31A27),
                          padding: const EdgeInsets.only(left: 20),
                          underline: Container(), // Remove underline
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          value: selectedCraftType.toString(),
                          onChanged: (String? value) {
                            if (value != null) {
                              setState(() {
                                selectedCraftType = CraftType.values.firstWhere(
                                    (type) => type.toString() == value);
                              });
                            }
                          },
                          items: CraftType.values.map((CraftType value) {
                            return DropdownMenuItem<String>(
                              value: value.toString(),
                              child: Text(value.toString().split('.').last),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: width * 0.06),
                //cabin type dropdown
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cabin Type',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    GlassmorphicContainer(
                      width: width * 0.3,
                      height: height * 0.06,
                      borderRadius: 8.0,
                      linearGradient: AppGradients.glassInputGradient,
                      border: 0.5,
                      blur: 50,
                      borderGradient: const LinearGradient(
                        begin: Alignment(0.59, 0.80),
                        end: Alignment(-0.59, -0.8),
                        colors: [
                          Color(0x4AFFFFFF),
                          Color(0x0AFFFFFF),
                        ],
                      ),
                      child: SizedBox(
                        // Wrap DropdownButton with Container
                        width: width * 0.3,
                        height: height * 0.06,
                        child: DropdownButton<String>(
                          dropdownColor: const Color(0x0ff31a27),
                          padding: const EdgeInsets.only(left: 20),
                          underline: Container(), // Remove underline
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          value: selectedCabinType.toString(),
                          onChanged: (String? value) {
                            if (value != null) {
                              _onCabinDropdownChanged(CabinType.values
                                  .firstWhere(
                                      (type) => type.toString() == value));
                            }
                          },
                          items: CabinType.values.map((CabinType value) {
                            return DropdownMenuItem<String>(
                              value: value.toString(),
                              child: Text(value.toString().split('.').last),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Promo Code',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GlassmorphicContainer(
                        width: width * 0.25,
                        height: height * 0.05,
                        borderRadius: 8.0,
                        linearGradient: AppGradients.glassInputGradient,
                        border: 0.5,
                        blur: 50,
                        borderGradient: const LinearGradient(
                          begin: Alignment(0.59, 0.80),
                          end: Alignment(-0.59, -0.8),
                          colors: [
                            Color.fromARGB(75, 255, 255, 255),
                            Color.fromARGB(11, 255, 255, 255),
                          ],
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.01),
                          width: width * 0.25,
                          height: height * 0.05,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              setState(() {
                                promoCode = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Passengers',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GlassmorphicContainer(
                        width: width * 0.25,
                        height: height * 0.05,
                        borderRadius: 8.0,
                        linearGradient: AppGradients.glassInputGradient,
                        border: 0.5,
                        blur: 50,
                        borderGradient: const LinearGradient(
                          begin: Alignment(0.59, 0.80),
                          end: Alignment(-0.59, -0.8),
                          colors: [
                            Color.fromARGB(75, 255, 255, 255),
                            Color.fromARGB(11, 255, 255, 255),
                          ],
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.01),
                          width: width,
                          height: height,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              hintText: "0",
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            onChanged: (String value) {
                              // Change the parameter type to String
                              // Convert the string value to an integer if needed
                              int parsedValue = int.tryParse(value) ?? 0;
                              setState(() {
                                numberOfPassengers = parsedValue;
                              });
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            primaryButton(context, 'FIND CRAFTS', onPressed: () {
              PageNavigator(context: context).nextPage(const SearchResults());
            })
          ]),
        ),
      ),
    );
  }
}
