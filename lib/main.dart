import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  //Initialize firebase app
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/models/enums/craftType.dart';
import 'package:astro_hub/screens/initialization_screens/home.dart';
import 'package:astro_hub/widgets/global/book_btn.dart';
import 'package:astro_hub/widgets/global/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'constants/imagePaths.dart' as images;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Simple Flutter App',
        home: MyHomePage("John Doe", "Stokes and Sons", 42));
      debugShowCheckedModeBanner: false,
      title: 'Astrohub',
      theme: ThemeData(
        // primaryColor: const Color.fromARGB(142, 233, 30, 98),
        // canvasColor: Color.fromARGB(255, 30, 233, 142),
        // cardColor: Color.fromARGB(255, 0, 166, 255),
        // dialogBackgroundColor: Color.fromARGB(142, 255, 200, 0),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
        fontFamily: 'SairaSemiCondensed',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primarySolid01),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String fullName;
  final String company;
  final int age;

  MyHomePage(this.fullName, this.company, this.age);

  @override
  Widget build(BuildContext context) {
    CollectionReference flights =
        FirebaseFirestore.instance.collection("USERS");

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return flights
          .add({
            'full_name': fullName, // John Doe
            'company': company, // Stokes and Sons
            'age': age // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          //
          child: Image(
            image: AssetImage(images.bgImage),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        Home(),
        // Container(
        //     constraints: BoxConstraints.expand(),
        //     width: double.infinity,
        //     decoration: const BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage(images.bgImage),
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     child: Home()),
      ],
    );
  }
}
