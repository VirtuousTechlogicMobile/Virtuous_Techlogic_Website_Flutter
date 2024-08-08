import 'package:flutter/material.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tablet_header_comp_model.dart';

export 'tablet_header_comp_model.dart';

class TabletHeaderCompWidget extends StatefulWidget {
  const TabletHeaderCompWidget({
    super.key,
    required this.drawerCallback,
  });

  final Future Function()? drawerCallback;

  @override
  State<TabletHeaderCompWidget> createState() => _TabletHeaderCompWidgetState();
}

class _TabletHeaderCompWidgetState extends State<TabletHeaderCompWidget> {
  late TabletHeaderCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabletHeaderCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 30.0, 25.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('TABLET_HEADER_COMP_COMP_LogoImage_ON_TAP');

                context.pushNamed('homePage');
              },
              child: Image.asset(
                'assets/images/logo.png',
                width: 183,
                height: 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Builder(
                  builder: (context) => wrapWithModel(
                    model: _model.getInTouchButtonCompModel,
                    updateCallback: () => setState(() {}),
                    child: GetInTouchButtonCompWidget(
                      buttonName: 'Get in Touch',
                      showIcon: true,
                      buttonAction: () async {
                        logFirebaseEvent(
                            'TABLET_HEADER_Container_5r7giy8v_CALLBAC');
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: const SizedBox(
                                width: 700.0,
                                child: GetInTouchComponentWidget(
                                  showIcon: true,
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                    ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primary,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 48.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.dehaze_rounded,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('TABLET_HEADER_dehaze_rounded_ICN_ON_TAP');
                    await widget.drawerCallback?.call();
                  },
                ),
              ].divide(const SizedBox(width: 20.0)),
            ),
          ),
        ],
      ),
    );
  }
}
