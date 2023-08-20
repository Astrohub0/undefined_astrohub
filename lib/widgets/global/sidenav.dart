import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _MyHomePageState();
}

// class _MyHomePageState extends State<NavBar> {
  
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Recent Trips',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: Book a Trip',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Blog',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 4: Sign Out',
//       style: optionStyle,
//     ),
//   ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    bool isChecked = false;
    return Drawer(
        backgroundColor: AppColors.primarySolid02,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 50.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'James Rhodes',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'View Profile',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
                GFAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.comingsoon.net%2Ftv%2Ffeatures%2F1290979-what-you-need-to-know-about-don-cheadles-james-rhodey-rhodes-secret-invasion&psig=AOvVaw1lHKHRI0qwyk219PjEdz5o&ust=1692609954142000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCNjd-cr16oADFQAAAAAdAAAAABAJ")),
                SizedBox(width: 20.0),
              ],
            ),
            const SizedBox(height: 30.0),
            ListTile(
              title: const SizedBox(
                width: 234,
                child: Text(
                  'Home',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const SizedBox(
                width: 234,
                child: Text(
                  'Recent Trips',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const SizedBox(
                width: 234,
                child: Text(
                  'Book a Trip',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const SizedBox(
                width: 234,
                child: Text(
                  'Blog',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              selected: _selectedIndex == 3,
              onTap: () {
                // Update the state of the app
                _onItemTapped(3);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 64.0),
            ListTile(
              title: const SizedBox(
                width: 234,
                child: Text(
                  'Sign Out',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFFAB520),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              selected: _selectedIndex == 4,
              onTap: () {
                // Update the state of the app
                _onItemTapped(4);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 48.0),
            Container(
              width: 246,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.6000000238418579),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png', height: 100),
                    const SizedBox(width: 20.0),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    'Help & Feedback | Contact Us',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF0E8BD3),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/fromIntergalacticRight.png',
                        height: 40),
                    const SizedBox(width: 30.0),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
