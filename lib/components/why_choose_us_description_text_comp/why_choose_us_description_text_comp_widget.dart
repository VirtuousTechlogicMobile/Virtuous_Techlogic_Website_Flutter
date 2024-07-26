import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'why_choose_us_description_text_comp_model.dart';
export 'why_choose_us_description_text_comp_model.dart';

class WhyChooseUsDescriptionTextCompWidget extends StatefulWidget {
  const WhyChooseUsDescriptionTextCompWidget({
    super.key,
    this.text1,
    this.text2,
  });

  final String? text1;
  final String? text2;

  @override
  State<WhyChooseUsDescriptionTextCompWidget> createState() =>
      _WhyChooseUsDescriptionTextCompWidgetState();
}

class _WhyChooseUsDescriptionTextCompWidgetState
    extends State<WhyChooseUsDescriptionTextCompWidget> {
  late WhyChooseUsDescriptionTextCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhyChooseUsDescriptionTextCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: Text(
              valueOrDefault<String>(
                widget!.text1,
                'sd',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                    color: FlutterFlowTheme.of(context).text16Colo2,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelLargeFamily),
                  ),
            ),
          ),
        ),
        Flexible(
          child: Text(
            valueOrDefault<String>(
              widget!.text2,
              'e',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: FlutterFlowTheme.of(context).text16Colo2,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
          ),
        ),
      ],
    );
  }
}
