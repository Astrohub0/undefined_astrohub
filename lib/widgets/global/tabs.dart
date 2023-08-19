import 'package:ant_design_flutter/ant_design_flutter.dart';

Widget tabs(String tab1, String tab2, String tab3, BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    width: width*0.8,
    child: Tabs(
      children: [
      TabPane(
        name: '1', 
        tab: Container(
          padding: const EdgeInsets.all(8.0), // Adjust padding as needed
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF4CFF5E), Color(0xFF4CFF71)],
              ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text(
            tab1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'SairaSemiCondensed',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ), 
        child: const Text('Content of Tab Pane 1'),
      ),
      TabPane(
        name: '2', 
        tab: Container(
          padding: const EdgeInsets.all(8.0), // Adjust padding as needed
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF4CFF5E), Color(0xFF4CFF71)],
              ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text(
            tab2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'SairaSemiCondensed',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ), 
        child: const Text('Content of Tab Pane 2'),
      ),
      TabPane(
        name: '3', 
        tab: Container(
          padding: const EdgeInsets.all(8.0), // Adjust padding as needed
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF4CFF5E), Color(0xFF4CFF71)],
              ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text(
            tab3,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'SairaSemiCondensed',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ), 
        child: const Text('Content of Tab Pane 3'),
      ),
    ]),
  );
}