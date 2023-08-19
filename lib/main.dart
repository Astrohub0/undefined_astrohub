import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/enums/craft_type.dart';
import 'package:astro_hub/screens/initialization_screens/home.dart';
import 'package:astro_hub/widgets/global/book_btn.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Astrohub',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
        fontFamily: 'SairaSemiCondensed',
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primarySolid01,
            surfaceVariant: Colors.transparent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned.fill(
          //
          child: Image(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        BookRoundTrip()
      ],
    );
  }
}
