// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:meta_seo/meta_seo.dart';

Future metaData(String title) async {
  // Define MetaSEO object
  MetaSEO().config();
  MetaSEO meta = MetaSEO();
  // Add meta seo data for web app as you want
  meta.ogTitle(ogTitle: title);
}
