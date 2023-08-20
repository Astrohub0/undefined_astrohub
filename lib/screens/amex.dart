import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/screens/recent_trips.dart';
import 'package:astro_hub/utils/router.dart';
import 'package:astro_hub/widgets/global/glass_text_card.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../services/make_booking.dart';

class Amex extends StatefulWidget {
  const Amex({Key? key}) : super(key: key);

  @override
  _AmexState createState() => _AmexState();
}

class _AmexState extends State<Amex> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String cardholderName = '';
    String cardNo = '';
    String CVV = '';
    String expiryDate = '';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GlassmorphicContainer(
            width: width,
            height: height * 0.06,
            borderRadius: 8.0,
            linearGradient: AppGradients.glassInputGradient,
            border: 0.0, // Set border width to 0 to reduce border
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
              width: width * 0.8,
              height: height * 0.05,
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                decoration: const InputDecoration(
                  hintText: "Cardholder's name",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 0), // Adjust vertical padding
                ),
                onChanged: (value) {
                  setState(() {
                    cardholderName = value;
                    print(cardholderName);
                  });
                },
              ),
            ),
          ),
          GlassmorphicContainer(
            width: width,
            height: height * 0.06,
            borderRadius: 8.0,
            linearGradient: AppGradients.glassInputGradient,
            border: 0.0, // Set border width to 0 to reduce border
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
              width: width * 0.8,
              height: height * 0.05,
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                decoration: const InputDecoration(
                  hintText: "Card number",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 0), // Adjust vertical padding
                ),
                onChanged: (value) {
                  setState(() {
                    cardNo = value;
                    print(cardNo);
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GlassmorphicContainer(
                  width: width * 0.3,
                  height: height * 0.06,
                  borderRadius: 8.0,
                  linearGradient: AppGradients.glassInputGradient,
                  border: 0.0, // Set border width to 0 to reduce border
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
                    width: width * 0.3,
                    height: height * 0.05,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: const InputDecoration(
                        hintText: "Expire date",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0), // Adjust vertical padding
                      ),
                      onChanged: (value) {
                        setState(() {
                          expiryDate = value;
                          print(expiryDate);
                        });
                      },
                    ),
                  ),
                ),
                GlassmorphicContainer(
                  width: width * 0.3,
                  height: height * 0.06,
                  borderRadius: 8.0,
                  linearGradient: AppGradients.glassInputGradient,
                  border: 0.0, // Set border width to 0 to reduce border
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
                    width: width * 0.3,
                    height: height * 0.05,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: const InputDecoration(
                        hintText: "CVV",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0), // Adjust vertical padding
                      ),
                      onChanged: (value) {
                        setState(() {
                          CVV = value;
                          print(CVV);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            width: width * 0.5,
            height: height * 0.15,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(255, 255, 255, 0.6), // Border color
                width: 2.0, // Border width
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ticket Price', style: TextStyles.bodyText),
                  Text('  \$5800', style: TextStyles.bodyText),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fair Tax', style: TextStyles.bodyText),
                  Text('  \$160', style: TextStyles.bodyText),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.white.withOpacity(0.6),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount', style: TextStyles.bodyText),
                  Text('  \$5960', style: TextStyles.bodyText),
                ],
              ),
            ]),
          ),
          SizedBox(height: height * 0.05),
          primaryButton(context, 'Checkout', onPressed: () {
            //PageNavigator(context: context).nextPage(RecentTrips());
            MakeBooking().addPurchase();
          })
        ],
      ),
    );
  }
}
