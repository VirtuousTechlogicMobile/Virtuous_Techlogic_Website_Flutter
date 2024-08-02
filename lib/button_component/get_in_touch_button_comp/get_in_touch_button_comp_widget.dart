import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'get_in_touch_button_comp_model.dart';

export 'get_in_touch_button_comp_model.dart';

class GetInTouchButtonCompWidget extends StatefulWidget {
  const GetInTouchButtonCompWidget({
    super.key,
    this.buttonName,
    required this.buttonAction,
    this.showIcon,
  });

  final String? buttonName;
  final Future Function()? buttonAction;
  final bool? showIcon;

  @override
  State<GetInTouchButtonCompWidget> createState() =>
      _GetInTouchButtonCompWidgetState();
}

class _GetInTouchButtonCompWidgetState
    extends State<GetInTouchButtonCompWidget> {
  late GetInTouchButtonCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetInTouchButtonCompModel());

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
        logFirebaseEvent('GET_IN_TOUCH_BUTTON_BUTTON_BTN_ON_TAP');
        await widget.buttonAction?.call();
      },
      text: widget.buttonName!,
      icon: const Icon(
        Icons.arrow_outward,
        size: 15.0,
      ),
      options: FFButtonOptions(
        height: 40.0,
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 24.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Plus Jakarta Sans',
              color: FlutterFlowTheme.of(context).secondaryBackground,
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
