import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String individualPageRedirect(
  DocumentReference blogReference,
  String baseUrl,
) {
// Construct the URL with the blogReference ID
  final String url = '$baseUrl/${blogReference?.id}';

  // Print or return the URL
  print("Generated URL: $url");
  return url;
}
