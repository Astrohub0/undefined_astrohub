import 'package:astro_hub/constants/styles.dart';
import 'package:astro_hub/screens/landing.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
import 'constants/image_paths.dart' as image_paths;
import 'package:astro_hub/screens/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        // 0xFF4CFF5E
        scaffoldBackgroundColor: Color(
          0xFF03132C,
        ),
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
            image: AssetImage(image_paths.bgImage),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        Landing(),
      ],
    );
  }
}
