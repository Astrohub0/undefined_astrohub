import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/enums/craft_type.dart';
import 'package:astro_hub/models/enums/shuttle_type.dart';
import 'package:astro_hub/widgets/features/departure.dart';
import 'package:astro_hub/widgets/features/departure_date.dart';
import 'package:astro_hub/widgets/global/book_btn.dart';
import 'package:astro_hub/widgets/global/common_number_input.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  CraftType selectedCraftType = CraftType.Cruise; // Default selected type
  CabinType selectedCabinType = CabinType.Economy; // Default selected type

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
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                departure(context,
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
                departure(context,
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
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Departure Date Range',
                          style: TextStyles.subtopicText)),
                ),
                const DepartureDatePick(),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Arrival Date Range',
                          style: TextStyles.subtopicText)),
                ),
                const DepartureDatePick(),
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
                                  _onShuttleDropdownChanged(CraftType.values
                                      .firstWhere(
                                          (type) => type.toString() == value));
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * 0.06),
                    numberInput(width * 0.25, height * 0.05, 'Passengers'),
                  ],
                ),
              ]),
        ),
        floatingActionButton: bookFlight(),
      ),
    );
  }
}
