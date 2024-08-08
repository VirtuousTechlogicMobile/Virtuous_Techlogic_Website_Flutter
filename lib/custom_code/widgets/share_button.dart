// Automatic FlutterFlow imports
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';

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
    return FFButtonWidget(
      icon: const Icon(
        Icons.arrow_outward,
        size: 15.0,
      ),
      text: 'Hire Now',
      onPressed: () async {
        logFirebaseEvent('WHATSAPP_Container_aam828j4_ON_TAP');
        await launchURL('https://api.whatsapp.com/send/?phone=6354672876');

        // whatsapp(widget.title);
      },
      options: FFButtonOptions(
        height: 45.0,
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 24.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Plus Jakarta Sans',
              color: FlutterFlowTheme.of(context).secondaryBackground,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.0,
              useGoogleFonts:
                  GoogleFonts.asMap().containsKey('Plus Jakarta Sans'),
            ),
        elevation: 3.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
        hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
        hoverBorderSide: BorderSide(
          color: FlutterFlowTheme.of(context).buttonborderColor,
          width: 1.0,
        ),
        hoverTextColor: FlutterFlowTheme.of(context).buttonborderColor,
        hoverElevation: 3.0,
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
      print("androidUrl = $androidUrl");
    }
  } on Exception catch (e) {
    print('Error: $e');
    // Handle error
  }
}
