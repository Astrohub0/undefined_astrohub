import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/enums/filters.dart';
import 'package:astro_hub/models/travel_data.dart';
import 'package:astro_hub/widgets/features/searchres_card.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);
  //final SpaceTravelInfo info;

  @override
  SearchResultsState createState() => SearchResultsState();
}

class SearchResultsState extends State<SearchResults> {
  Filters selectedFilters = Filters.Price; // Default selected type

  void _onFilterChanged(Filters value) {
    setState(() {
      selectedFilters = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    SfRangeValues _values = SfRangeValues(40.0, 80.0);

    return Scaffold(
      appBar: const CommonAppBar(title: 'RESULTS', isBackButton: true),
      endDrawer: NavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: ListView(children: [
          //Text(widget.info.fromPort, style: TextStyles.subtopicText),

          GlassmorphicContainer(
              width: width * 0.8,
              height: height * 0.1,
              blur: 50,
              border: 2,
              borderGradient: const LinearGradient(
                begin: Alignment(0.59, 0.80),
                end: Alignment(-0.59, -0.8),
                colors: [
                  Color.fromRGBO(190, 132, 132, 0.05),
                  Color.fromRGBO(190, 132, 132, 0.05),
                ],
              ),
              borderRadius: 16.0,
              linearGradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(104, 186, 30, 103),
                  Color.fromARGB(81, 186, 30, 103),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Your flight is impacted by severe weather conditions, leading to potential delays or disruptions. Please stay tuned for further updates.',
                  style: TextStyle(
                    color: Color(0xFFB9B7BC),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )),
          SizedBox(height: height * 0.01),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Best Search Results For You',
                  style: TextStyles.subtopicText)),
          SizedBox(height: height * 0.01),
          searchResult(
              context,
              {
                'imgUrl': 'assets/images/miniearth.png',
                'name': "Earth",
                'time': "12:00",
                'date': "12 Aug"
              },
              {
                'imgUrl': 'assets/images/minimars.png',
                'name': "Mars",
                'time': "4:00",
                'date': "19 Feb"
              },
              [],
              'Economy',
              '5800.97',
          widget.info),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    value: selectedFilters.toString(),
                    onChanged: (String? value) {
                      if (value != null) {
                        _onFilterChanged(Filters.values
                            .firstWhere((type) => type.toString() == value));
                      }
                    },
                    items: Filters.values.map((Filters value) {
                      return DropdownMenuItem<String>(
                        value: value.toString(),
                        child: Text(value.toString().split('.').last),
                      );
                    }).toList(),
                  ),
                ),
              ),
              TextButton(
                onPressed: (() {}),
                child: const Text('Show Results',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ],
          ),
          SfRangeSlider(
            min: 0.0,
            max: 100.0,
            values: _values,
            interval: 20,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 1,
            onChanged: (SfRangeValues values) {
              setState(() {
                _values = values;
              });
            },
          ),
          SizedBox(height: height * 0.01),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Lowest Fares', style: TextStyles.subtopicText)),
          SizedBox(height: height * 0.01),
          searchResult(
              context,
              {
                'imgUrl': 'assets/images/miniearth.png',
                'name': "Earth",
                'time': "12:00",
                'date': "12 Aug"
              },
              {
                'imgUrl': 'assets/images/minimars.png',
                'name': "Mars",
                'time': "4:00",
                'date': "19 Feb"
              },
              [],
              'Economy',
              '5800.97',
          widget.info),
        ]),
      ),
    );
  }
}
