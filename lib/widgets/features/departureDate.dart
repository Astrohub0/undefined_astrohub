import 'package:astro_hub/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

Widget departureDatePick(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return GlassmorphicContainer(
    width: width * 0.8,
    height: height * 0.07,
    borderRadius: 8.0,
    linearGradient: AppGradients.glassBoxGradient,
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 5),
        Text(
          'From',
          style: TextStyle(
            color: Colors.white.withOpacity(0.60),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 5),
        Text(
          'To',
          style: TextStyle(
            color: Colors.white.withOpacity(0.60),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 5),
        IconButton(
          onPressed: () => _selectDateRange(context),
          icon: Icon(
            Icons.calendar_today,
            color: Colors.white.withOpacity(0.60),
          ),
        ),
        SizedBox(width: 5)
      ],
    ),
  );
}

Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      currentDate: DateTime.now(),
      helpText: 'Select a date range',
      cancelText: 'Cancel',
      confirmText: 'Confirm',
      saveText: 'Save',
      errorFormatText: 'Invalid date format',
      errorInvalidText: 'Invalid date',
      errorInvalidRangeText: 'Invalid date range',
      fieldStartHintText: 'Start date',
      fieldEndHintText: 'End date',
      fieldStartLabelText: 'Start Date',
      fieldEndLabelText: 'End Date',
    );

    if (picked != null) {
      print('Selected start date: ${picked.start}');
      print('Selected end date: ${picked.end}');
    }
  }

