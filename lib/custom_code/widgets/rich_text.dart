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

import 'package:google_fonts/google_fonts.dart';

class RichText extends StatefulWidget {
  const RichText({
    super.key,
    this.width,
    this.height,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.color5,
  });

  final double? width;
  final double? height;
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;
  final String? text5;
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;

  @override
  State<RichText> createState() => _RichTextState();
}

class _RichTextState extends State<RichText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText.rich(
          textAlign: TextAlign.center,
          textScaler: MediaQuery.of(context).textScaler,
          TextSpan(
            children: [
              TextSpan(
                text: widget.text1,
                style: TextStyle(color: widget.color1),
              ),
              TextSpan(
                text: widget.text2,
                style: TextStyle(
                  color: widget.color2,
                ),
              ),
              TextSpan(
                text: widget.text3,
                style: TextStyle(
                  color: widget.color3,
                ),
              ),
              TextSpan(
                text: widget.text4,
                style: TextStyle(
                  color: widget.color4,
                ),
              ),
              TextSpan(
                text: widget.text5,
                style: TextStyle(color: widget.color5),
              )
            ],
            style: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).displayMediumFamily,
                  fontSize: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 30.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 36.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 48.0;
                    } else {
                      return 48.0;
                    }
                  }(),
                  letterSpacing: 0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).displayMediumFamily),
                ),
          ),
        ),
      ],
    );
  }
}
