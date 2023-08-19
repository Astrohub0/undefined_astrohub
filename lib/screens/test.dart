import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/enums/craftType.dart';
import 'package:astro_hub/screens/initialization_screens/home.dart';
import 'package:astro_hub/widgets/global/boardingpass.dart';
import 'package:astro_hub/widgets/global/book_btn.dart';
import 'package:astro_hub/widgets/global/button.dart';
import 'package:astro_hub/widgets/global/class_label.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:astro_hub/widgets/global/common_number_input.dart';
import 'package:astro_hub/widgets/global/tabs.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Test extends StatefulWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: boardingpass(context)),
    );
  }
}