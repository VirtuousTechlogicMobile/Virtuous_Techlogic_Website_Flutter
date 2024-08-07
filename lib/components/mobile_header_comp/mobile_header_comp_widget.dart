import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mobile_header_comp_model.dart';

export 'mobile_header_comp_model.dart';

class MobileHeaderCompWidget extends StatefulWidget {
  const MobileHeaderCompWidget({
    super.key,
    this.index,
    required this.drawerCallBack,
  });

  final int? index;
  final Future Function()? drawerCallBack;

  @override
  State<MobileHeaderCompWidget> createState() => _MobileHeaderCompWidgetState();
}

class _MobileHeaderCompWidgetState extends State<MobileHeaderCompWidget> {
  late MobileHeaderCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileHeaderCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('MOBILE_HEADER_COMP_COMP_LogoImage_ON_TAP');

                context.pushNamed('homePage');
              },
              child: Image.asset(
                'assets/images/logo.webp',
                width: 122,
                height: 40,
              ),
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 20.0,
              borderWidth: 1.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.dehaze_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
              onPressed: () async {
                logFirebaseEvent('MOBILE_HEADER_dehaze_rounded_ICN_ON_TAP');
                await widget.drawerCallBack?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}
