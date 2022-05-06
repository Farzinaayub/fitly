import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int calcCalorie(
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
