import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'faq_comp_model.dart';
export 'faq_comp_model.dart';

class FaqCompWidget extends StatefulWidget {
  const FaqCompWidget({super.key});

  @override
  State<FaqCompWidget> createState() => _FaqCompWidgetState();
}

class _FaqCompWidgetState extends State<FaqCompWidget> {
  late FaqCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Q&As',
                style: TextStyle(),
              )
            ],
            style: FlutterFlowTheme.of(context).displayMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).displayMediumFamily,
                  fontSize: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
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
      ],
    );
  }
}
