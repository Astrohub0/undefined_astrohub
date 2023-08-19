import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';

class CommonTabbar extends StatefulWidget {
  const CommonTabbar({
    Key? key,
    required this.tab1,
    required this.tab2,
    required this.tab3,
    required this.tab1Widget,
    required this.tab2Widget,
    required this.tab3Widget,
    required this.tab1img,
    required this.tab2img,
    required this.tab3img,
  }) : super(key: key);

  final String tab1;
  final String tab2;
  final String tab3;
  final Widget tab1Widget;
  final Widget tab2Widget;
  final Widget tab3Widget;
  final String tab1img;
  final String tab2img;
  final String tab3img;
  @override
  CommonTabbarState createState() => CommonTabbarState();
}

class CommonTabbarState extends State<CommonTabbar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GlassmorphicContainer(
              width: width * 0.81,
              height: 50,
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
              borderRadius: 10.0,
              linearGradient: AppGradients.glassBoxGradient,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  dividerColor: null,
                  indicatorColor: Colors.transparent,
                  indicatorWeight: 0,
                  indicatorPadding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  labelStyle: const TextStyle(fontSize: 12),
                  unselectedLabelColor: Colors.white,
                  //add border color to unselected tabs
                  labelColor: Colors.black,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), // Creates border
                    color: AppColors.primarySolid01,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF4CFF5E).withAlpha(60),
                        blurRadius: 10.0,
                        spreadRadius: 20.0,
                        offset: const Offset(
                          0.0,
                          3.0,
                        ),
                      ),
                    ],
                  ),
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(widget.tab1img),
                          const SizedBox(
                              width:
                                  4), // Add some spacing between icon and text
                          Text(widget.tab1),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(widget.tab2img),
                          const SizedBox(
                              width:
                                  4), // Add some spacing between icon and text
                          Text(widget.tab2),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(widget.tab3img),
                          const SizedBox(
                              width:
                                  4), // Add some spacing between icon and text
                          Text(widget.tab3),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            // Wrap TabBarView with Expanded widget
            child: TabBarView(
              children: [
                widget.tab1Widget,
                widget.tab2Widget,
                widget.tab3Widget,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
