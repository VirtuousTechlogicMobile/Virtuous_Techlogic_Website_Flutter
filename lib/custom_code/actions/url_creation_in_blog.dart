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

Future urlCreationInBlog(
  String blogTitle,
  String currentPageLink,
) async {
  // Add your function code here!
  final String encodedBlogTitle = Uri.encodeComponent(blogTitle);

  // Construct the URL with the blog title as a query parameter
  final String link = '$currentPageLink?blogTitle=$encodedBlogTitle';

  // Launch the URL
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    print("Cannot launch link: $link");
  }
}
