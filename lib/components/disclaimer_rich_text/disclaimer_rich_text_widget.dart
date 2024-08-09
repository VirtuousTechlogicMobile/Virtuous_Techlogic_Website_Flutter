import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:virtuous_techlogic_website/components/disclaimer_rich_text/disclaimer_rich_text_model.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DisclaimerRichTextWidget extends StatefulWidget {
  const DisclaimerRichTextWidget({super.key});

  @override
  State<DisclaimerRichTextWidget> createState() =>
      _DisclaimerRichTextWidgetState();
}

class _DisclaimerRichTextWidgetState extends State<DisclaimerRichTextWidget> {
  late DisclaimerRichTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisclaimerRichTextModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Disclaimer',
                    style: TextStyle(),
                  )
                ],
                style: FlutterFlowTheme.of(context).displayMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).displayMediumFamily,
                      fontSize: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 30.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 48.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 48.0;
                        } else {
                          return 48.0;
                        }
                      }(),
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).displayMediumFamily),
                    ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
