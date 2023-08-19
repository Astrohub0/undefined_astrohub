import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/common_search.dart';
import 'package:astro_hub/widgets/global/recently_searched_card.dart';
import 'package:flutter/material.dart';

class SearchDeparture extends StatefulWidget {
  const SearchDeparture({Key? key}) : super(key: key);

  @override
  SearchDepartureState createState() => SearchDepartureState();
}

class SearchDepartureState extends State<SearchDeparture> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(title: 'Select Port', isBackButton: true ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: searchBar(context, (p0) => null)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView(
                children: [
                  recentlySearched(context,
                      imgUrl: 'assets/images/minimars.png',
                      title: 'MS01',
                      subtitle: 'Mars-01'),
                  recentlySearched(context,
                      imgUrl: 'assets/images/minimars.png',
                      title: 'MS01',
                      subtitle: 'Mars-01'),
                  recentlySearched(context,
                      imgUrl: 'assets/images/minimars.png',
                      title: 'MS01',
                      subtitle: 'Mars-01'),
                  recentlySearched(context,
                      imgUrl: 'assets/images/minimars.png',
                      title: 'MS01',
                      subtitle: 'Mars-01'),
                  recentlySearched(context,
                      imgUrl: 'assets/images/minimars.png',
                      title: 'MS01',
                      subtitle: 'Mars-01'),
                  recentlySearched(context,
                      imgUrl: 'assets/images/minimars.png',
                      title: 'MS01',
                      subtitle: 'Mars-01'),
                  recentlySearched(context,
                      imgUrl: 'assets/images/minimars.png',
                      title: 'MS01',
                      subtitle: 'Mars-01'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
