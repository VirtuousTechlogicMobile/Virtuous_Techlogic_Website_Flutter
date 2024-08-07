import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'whatsap_sticky_comp_model.dart';

export 'whatsap_sticky_comp_model.dart';

class WhatsapStickyCompWidget extends StatefulWidget {
  const WhatsapStickyCompWidget({super.key});

  @override
  State<WhatsapStickyCompWidget> createState() =>
      _WhatsapStickyCompWidgetState();
}

class _WhatsapStickyCompWidgetState extends State<WhatsapStickyCompWidget> {
  late WhatsapStickyCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhatsapStickyCompModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('WHATSAP_STICKY_Container_pzq72nnl_ON_TAP');
          await launchURL('https://api.whatsapp.com/send/?phone=6354672876');
        },
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/whatsapp.webp',
                fit: BoxFit.contain,
                alignment: const Alignment(0.0, 0.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
