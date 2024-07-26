// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

Future socialMediablogShare(
  DocumentReference blogref,
  String blogTitle,
  String? socialurl,
) async {
  final String encodedBlogTitle = Uri.encodeComponent(blogTitle);
  final String blogUrl =
      '${socialurl}https://virtuoustechlogic.com/individualBlogPage?blogRef=${blogref.id}&blogTitle=$encodedBlogTitle';

  if (await canLaunch(blogUrl)) {
    await launch(blogUrl);
  } else {
    throw 'Could not launch $blogUrl';
  }
}
