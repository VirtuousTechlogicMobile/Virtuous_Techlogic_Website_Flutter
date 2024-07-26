// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'package:url_launcher/url_launcher.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({
    super.key,
    this.width,
    this.height,
    required this.title,
  });

  final double? width;
  final double? height;
  final String title;

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        whatsapp(widget.title);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        backgroundColor: FlutterFlowTheme.of(context).primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        'Hire Now',
        style: FlutterFlowTheme.of(context).labelLarge.override(
              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              letterSpacing: 0,
              fontWeight: FontWeight.w600,
              // Adjust additional text styles as needed
            ),
      ),
    );
  }
}

whatsapp(String title) async {
  var contact = "+916354672876";
  var encodedTitle = Uri.encodeComponent(title);
  var androidUrl = "whatsapp://send?phone=$contact&text=$encodedTitle";
  var iosUrl = "https://wa.me/$contact?text=$encodedTitle";

  try {
    if (isiOS) {
      await launch(iosUrl);
    } else {
      await launch(androidUrl);
    }
  } on Exception catch (e) {
    print('Error: $e');
    // Handle error
  }
}
