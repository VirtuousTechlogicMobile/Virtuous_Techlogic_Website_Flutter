import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'desktop_header_comp_model.dart';

export 'desktop_header_comp_model.dart';

class DesktopHeaderCompWidget extends StatefulWidget {
  const DesktopHeaderCompWidget({
    super.key,
    int? indexParameter,
  }) : indexParameter = indexParameter ?? 0;

  final int indexParameter;

  @override
  State<DesktopHeaderCompWidget> createState() =>
      _DesktopHeaderCompWidgetState();
}

class _DesktopHeaderCompWidgetState extends State<DesktopHeaderCompWidget> {
  late DesktopHeaderCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DesktopHeaderCompModel());

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
      height: 100,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('DESKTOP_HEADER_LogoImage_ON_TAP');

                context.pushNamed('homePage');
              },
              child: Image.asset(
                'assets/images/logo.png',
                width: 183,
                height: 60,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('DESKTOP_HEADER_COMP_COMP_Home_ON_TAP');

                    context.goNamed('homePage');
                  },
                  child: Text(
                    'Home',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: valueOrDefault<Color>(
                            widget.indexParameter == 0
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondary,
                            FlutterFlowTheme.of(context).text16Color,
                          ),
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('DESKTOP_HEADER_AboutText_ON_TAP');

                    context.goNamed(
                      'aboutPage',
                      queryParameters: {
                        'index': serializeParam(
                          1,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Text(
                    'About',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: valueOrDefault<Color>(
                            widget.indexParameter == 1
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondary,
                            FlutterFlowTheme.of(context).text16Color,
                          ),
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('DESKTOP_HEADER_ServicesText_ON_TAP');

                    context.goNamed(
                      'servicesPage',
                      queryParameters: {
                        'index': serializeParam(
                          2,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Text(
                    'Services',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: valueOrDefault<Color>(
                            widget.indexParameter == 2
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondary,
                            FlutterFlowTheme.of(context).text16Color,
                          ),
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('DESKTOP_HEADER_OurProductText_ON_TAP');

                    context.goNamed(
                      'ourProductsPage',
                      queryParameters: {
                        'index': serializeParam(
                          3,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Text(
                    'Our Products',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: valueOrDefault<Color>(
                            widget.indexParameter == 3
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondary,
                            FlutterFlowTheme.of(context).text16Color,
                          ),
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('DESKTOP_HEADER_CaseStudiesText_ON_TAP');

                    context.goNamed(
                      'caseStudiesPage',
                      queryParameters: {
                        'index': serializeParam(
                          4,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Text(
                    'Case Studies',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: valueOrDefault<Color>(
                            widget.indexParameter == 4
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondary,
                            FlutterFlowTheme.of(context).text16Color,
                          ),
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap()
                              .containsKey('Plus Jakarta Sans'),
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 32.0)),
            ),
            Builder(
              builder: (context) => wrapWithModel(
                model: _model.getInTouchButtonCompModel,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: GetInTouchButtonCompWidget(
                  buttonName: 'Get in Touch',
                  showIcon: false,
                  buttonAction: () async {
                    logFirebaseEvent(
                        'DESKTOP_HEADER_Container_0t76uz0r_CALLBA');
                    await showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: const AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            child: const GetInTouchComponentWidget(
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
          ],
        ),
      ),
    );
  }
}
