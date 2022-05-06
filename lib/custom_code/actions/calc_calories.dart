// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math' as math;

int calcCalories(
  String breakfast,
  String lunch,
  String dinner,
) {
  int totalCal = 0;
  switch (breakfast) {
    case "oats milk":
      totalCal = totalCal + 100;
      break;
    case "yogurt":
      totalCal = totalCal + 200;
      break;
  }
  switch (lunch) {
    case "chicken biriyani":
      totalCal = totalCal + 300;
      break;
    case "mutton biriyani":
      totalCal = totalCal + 400;
      break;
  }
  switch (dinner) {
    case "chicken biriyani":
      totalCal = totalCal + 300;
      break;
    case "mutton biriyani":
      totalCal = totalCal + 400;
      break;
  }
  return totalCal;

  // Add your function code here!
}
