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
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Simple Flutter App',
        home: MyHomePage("John Doe", "Stokes and Sons", 42));
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
    );
  }
}
