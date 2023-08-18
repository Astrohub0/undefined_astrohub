import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget searchBar(BuildContext context, Function(String)? setSearchQuery) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return GlassmorphicContainer(
    width: width * 0.8,
    height: height * 0.07,
    borderRadius: 8.0,
    linearGradient: const LinearGradient(
        begin: Alignment(0.59, 0.80),
        end: Alignment(-0.59, -0.8),
        colors: [Color(0x4C4C4C4C), Color(0x0C181818)]),
    border: 0.5,
    blur: 50,
    borderGradient: const LinearGradient(
      begin: Alignment(0.59, 0.80),
      end: Alignment(-0.59, -0.8),
      colors: [
        Color.fromARGB(75, 255, 255, 255),
        Color.fromARGB(11, 255, 255, 255)
      ],
    ),
    child: TextField(
      onChanged: setSearchQuery,
      decoration: const InputDecoration(
        hintStyle: TextStyle(
          color: Color(0xFFB9B7BC),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintText: 'Search Flights',
        prefixIcon: Icon(Icons.search, color: Color(0xFFB9B7BC), size: 20),
        border: InputBorder.none,
      ),
    ),
  );
}
