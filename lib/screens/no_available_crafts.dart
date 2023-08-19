import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/primary_btn.dart';
import 'package:flutter/material.dart';

class NoAvailableCrafts extends StatelessWidget {
  const NoAvailableCrafts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppBar(
          title: 'Select a craft',
          isBackButton: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
          // i need a container to display an image, a text and a button one after the other
          child: Column(
            children: [
              // image
              Image.asset('assets/images/space-man-elipse.png'),
              Text(
                  'Sorry :(',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
              ),
              // text
              Text(
                  'No available crafts',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
              ),
              // add a sized box
              SizedBox(
                height: 30,
              ),
              // button
              primaryButton(
                context,
                'Search again'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
