import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double convertStringToDouble(String stringInput) {
  return double.tryParse(stringInput) ?? 0.00;
}

double addValue(
  double value1,
  double value2,
) {
  return value1 + value2;
}
