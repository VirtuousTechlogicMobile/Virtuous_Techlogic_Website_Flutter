import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'browse_services_button_comp_model.dart';
export 'browse_services_button_comp_model.dart';

class BrowseServicesButtonCompWidget extends StatefulWidget {
  const BrowseServicesButtonCompWidget({
    super.key,
    required this.action,
  });

  final Future Function()? action;

  @override
  State<BrowseServicesButtonCompWidget> createState() =>
      _BrowseServicesButtonCompWidgetState();
}

class _BrowseServicesButtonCompWidgetState
    extends State<BrowseServicesButtonCompWidget> {
  late BrowseServicesButtonCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrowseServicesButtonCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        logFirebaseEvent('BROWSE_SERVICES_BUTTON_BROWSE_SERVICES_B');
        await widget.action?.call();
      },
      text: 'Browse Services',
      options: FFButtonOptions(
        height: 48.0,
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).labelLarge.override(
              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
              color: FlutterFlowTheme.of(context).primary,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
            ),
        borderRadius: BorderRadius.circular(20.0),
        hoverColor: FlutterFlowTheme.of(context).primary,
        hoverTextColor: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
