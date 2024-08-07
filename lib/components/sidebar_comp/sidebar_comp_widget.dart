import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sidebar_comp_model.dart';

export 'sidebar_comp_model.dart';

class SidebarCompWidget extends StatefulWidget {
  const SidebarCompWidget({
    super.key,
    int? indexParameter,
  }) : indexParameter = indexParameter ?? 0;

  final int indexParameter;

  @override
  State<SidebarCompWidget> createState() => _SidebarCompWidgetState();
}

class _SidebarCompWidgetState extends State<SidebarCompWidget> {
  late SidebarCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarCompModel());

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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'SIDEBAR_COMP_COMP_LogoImage_ON_TAP');

                          context.pushNamed('homePage');
                        },
                        child: Image.asset(
                          'assets/images/logo.webp',
                          width: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        icon: Icon(
                          Icons.close_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 25.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'SIDEBAR_COMP_COMP_CloseIconButton_ON_TAP');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('SIDEBAR_COMP_COMP_home_ON_TAP');

                          context.pushNamed('homePage');
                        },
                        child: Text(
                          'Home',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                color: valueOrDefault<Color>(
                                  widget.indexParameter == 0
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).secondary,
                                  FlutterFlowTheme.of(context).text16Color,
                                ),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelLargeFamily),
                              ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('SIDEBAR_COMP_COMP_about_ON_TAP');

                          context.pushNamed(
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
                          'About Us',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                color: valueOrDefault<Color>(
                                  widget.indexParameter == 1
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).secondary,
                                  FlutterFlowTheme.of(context).text16Color,
                                ),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelLargeFamily),
                              ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('SIDEBAR_COMP_COMP_service_ON_TAP');

                          context.pushNamed(
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
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                color: valueOrDefault<Color>(
                                  widget.indexParameter == 2
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).secondary,
                                  FlutterFlowTheme.of(context).text16Color,
                                ),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelLargeFamily),
                              ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('SIDEBAR_COMP_COMP_product_ON_TAP');

                          context.pushNamed(
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
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                color: valueOrDefault<Color>(
                                  widget.indexParameter == 3
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).secondary,
                                  FlutterFlowTheme.of(context).text16Color,
                                ),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelLargeFamily),
                              ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'SIDEBAR_COMP_COMP_casestudies_ON_TAP');

                          context.pushNamed(
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
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                color: valueOrDefault<Color>(
                                  widget.indexParameter == 4
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).secondary,
                                  FlutterFlowTheme.of(context).text16Color,
                                ),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelLargeFamily),
                              ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('SIDEBAR_COMP_COMP_contact_ON_TAP');

                          context.pushNamed(
                            'contactUsPage',
                            queryParameters: {
                              'index': serializeParam(
                                5,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Text(
                          'Contact Us',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                color: valueOrDefault<Color>(
                                  widget.indexParameter == 5
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).secondary,
                                  FlutterFlowTheme.of(context).text16Color,
                                ),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelLargeFamily),
                              ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
