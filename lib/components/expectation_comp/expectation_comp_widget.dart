import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'expectation_comp_model.dart';
export 'expectation_comp_model.dart';

class ExpectationCompWidget extends StatefulWidget {
  const ExpectationCompWidget({
    super.key,
    required this.description,
  });

  final String? description;

  @override
  State<ExpectationCompWidget> createState() => _ExpectationCompWidgetState();
}

class _ExpectationCompWidgetState extends State<ExpectationCompWidget> {
  late ExpectationCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpectationCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Icon(
              Icons.check_circle,
              color: FlutterFlowTheme.of(context).primary,
              size: 18.0,
            ),
          ),
          Expanded(
            flex: 4,
            child: Align(
              alignment: AlignmentDirectional(-1.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                child: AutoSizeText(
                  widget!.description!,
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Open Sans'),
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
