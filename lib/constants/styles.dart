import 'package:flutter/material.dart';

class AppStyles {
  static const double padding = 20;
  static const double avatarRadius = 45;
}

class TextStyles {
  //global text variants

  static const TextStyle bodyText = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle subtopicText = TextStyle(
    color: Colors.white.withOpacity(0.6),
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle subText = TextStyle(
    color: Color(0xFF909090),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle appBarText = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  //for departure container
  static const TextStyle departureTitle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
  static TextStyle departureSubtitle = TextStyle(
    color: Colors.white.withOpacity(0.6),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  //for upcoming trips container
  static const TextStyle refnostyle = TextStyle(
    color: Colors.white,
    fontSize: 10,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle upcomingtripsPlanet = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle upcomingtripsDate = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle greenBold = TextStyle(
    color: Color(0xFF4CFF5E),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  //for recenttrips container
  static const TextStyle keytext = TextStyle(
    color: Colors.white,
    fontSize: 8,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle valueText = TextStyle(
    color: Colors.white,
    fontSize: 8,
    fontWeight: FontWeight.w300,
  );
}

class AppColors {
  static const Color primarySolid01 = Color(0xFF4CFF5E);
  static const Color primarySolid02 = Color(0xFF030418);
  static const Color secondarySolid01 = Color(0xFF000000);
  static const Color secondarySolid02 = Color(0xFFFFFFFF);
  static const Color utilitySolidRed = Color(0xFFA50009);
  static const Color utilitySolidYellow = Color(0xFFFAB520);
  static const Color utilitySolidGreen = Color(0xFFA2CA2C);
  static const Color utilitySolidBlue = Color(0xFF0E8BD3);
  static const Color utilitySolidPink = Color(0xFFBA1E68);
}

class AppGradients {
  static const LinearGradient primaryGradient01 = LinearGradient(
    begin: Alignment(0.65, -0.76),
    end: Alignment(-0.65, 0.76),
    colors: [Color(0xFF4CFF5E), Color(0xFF4CFF71)],
  );
  static const LinearGradient primaryGradient02 = LinearGradient(
    begin: Alignment(0.65, -0.76),
    end: Alignment(-0.65, 0.76),
    colors: [Color(0xFF030418), Color(0xFF03132C)],
  );

  static const LinearGradient glassInputGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color(0x4C4C4C4C), Color(0x0C181818)],
  );

  static const glassBoxGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Color.fromRGBO(77, 77, 77, 0.3), Color.fromRGBO(24, 24, 24, 0.05)],
  );
}
