import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/common_search.dart';
import 'package:astro_hub/widgets/global/navbar.dart';
import 'package:astro_hub/widgets/global/recently_searched_card.dart';
import 'package:flutter/material.dart';
import '../constants/image_paths.dart' as image_paths;


class SearchDeparture extends StatefulWidget {
  final Function onSelection;

  const SearchDeparture({Key? key, required this.onSelection}) : super(key: key);

  @override
  SearchDepartureState createState() => SearchDepartureState();
}

class SearchDepartureState extends State<SearchDeparture> {
  String selectedImgUrl = '';
  String selectedTitle = '';
  String selectedSubtitle = '';

  void updateSelectedValues(String imgUrl, String title, String subtitle) {
    setState(() {
      selectedImgUrl = imgUrl;
      selectedTitle = title;
      selectedSubtitle = subtitle;
    });

  }

  Widget buildRow(
      BuildContext context, String imgUrl, String title, String subtitle) {
    return InkWell(
      onTap: () {
        if (selectedTitle == title) {
          updateSelectedValues('', '', ''); // Deselect if already selected
        } else {
          updateSelectedValues(imgUrl, title, subtitle); // Select the value
          widget.onSelection(imgUrl, title, subtitle);
        }
      },
      child: recentlySearched(context,
          imgUrl: imgUrl, title: title, subtitle: subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CommonAppBar(title: 'Select Port', isBackButton: true),
        endDrawer: NavBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: searchBar(context, (p0) => null)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
            [
              Text(selectedTitle, style: TextStyles.bodyText),
              SizedBox(width: 10),
            Text(selectedSubtitle, style: TextStyles.bodyText),

            ],),
            
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView(
                children: [
                  buildRow(context, image_paths.miniMars, 'MS01', 'Mars-01'),
                  buildRow(context, image_paths.miniMars, 'ER01', 'Earth-02')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
