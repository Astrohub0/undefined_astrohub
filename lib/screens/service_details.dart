import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/travel_data.dart';
import 'package:astro_hub/screens/checkout.dart';
import 'package:astro_hub/screens/landing.dart';
import 'package:astro_hub/utils/router.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/navbar.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class ServiceDetails extends StatefulWidget {
  ServiceDetails({
    Key? key,
    required this.spaceTravelInfo,
  }) : super(key: key);
  SpaceTravelInfo spaceTravelInfo;
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  Color? _selectedColor = Colors.red; // Default color

  void _handleRadioValueChanged(Color? color, String? className) {
    widget.spaceTravelInfo.selectedClass = className!;
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    bool selectedOption = false;

    void handleOptionChange(int value) {
      setState(() {
        selectedOption = true;
      });
    }

    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(title: 'SERVICE DETAILS', isBackButton: true),
        endDrawer: NavBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                width: width * 0.8,
                height: 147,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF4CFF5E)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Business ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Radio(
                          value: Colors.blue,
                          groupValue: _selectedColor,
                          onChanged: (color) =>
                              _handleRadioValueChanged(color, "Economy"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/businessImg.png', width: 90),
                        Spacer(),
                        Text(
                            'Fixed according to earth gravity.\n (1.0G) 35kg luggage \n 10kg cabin baggage',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                width: width * 0.8,
                height: height * 0.19,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF4CFF5E)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Economy ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Saira SemiCondensed',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Radio(
                          value: Colors.red,
                          groupValue: _selectedColor,
                          onChanged: (color) =>
                              _handleRadioValueChanged(color, "Business"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/economyImg.png', width: 90),
                        Spacer(),
                        Text(
                            'Zero-gravity with\n attachable belts \n 25kg luggage \n7kg cabin baggage',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Select Additional Features',
                    style: TextStyles.subtopicText),
              ),
              GlassmorphicContainer(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: width * 0.8,
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
                linearGradient: AppGradients.glassBoxGradient,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Extra Baggage ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Saira SemiCondensed',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/baggage.png', width: 90),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(height: height * 0.03),
                              Text('100 \$/ 1 kg',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(height: height * 0.01),
                              ElevatedButton(
                                onPressed: (() {}),
                                child: Text(
                                  'Add',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primarySolid01,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Adjust the value as needed
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              GlassmorphicContainer(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: width * 0.8,
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
                linearGradient: AppGradients.glassBoxGradient,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Seats ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/seats.png', width: 90),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(height: height * 0.03),
                              Text('Free of Charge',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(height: height * 0.01),
                              ElevatedButton(
                                onPressed: (() {}),
                                child: Text(
                                  'Add',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primarySolid01,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Adjust the value as needed
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Price', style: TextStyles.subtopicText),
                  Text('1000 \$', style: TextStyles.subtopicText),
                ],
              ),
              primaryButton(context, 'Checkout', onPressed: (() {
                PageNavigator(context: context).nextPage(Checkout(spaceTravelInfo: widget.spaceTravelInfo));
              })),
            ],
          ),
        ),
      ),
    );
  }
}
