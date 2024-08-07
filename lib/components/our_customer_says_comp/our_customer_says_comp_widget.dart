import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/components/customer_review_comp/customer_review_comp_widget.dart';
import '/components/customer_review_comp_mobile/customer_review_comp_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_customer_says_comp_model.dart';

export 'our_customer_says_comp_model.dart';

class OurCustomerSaysCompWidget extends StatefulWidget {
  const OurCustomerSaysCompWidget({super.key});

  @override
  State<OurCustomerSaysCompWidget> createState() =>
      _OurCustomerSaysCompWidgetState();
}

class _OurCustomerSaysCompWidgetState extends State<OurCustomerSaysCompWidget> {
  late OurCustomerSaysCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurCustomerSaysCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (valueOrDefault<bool>(
          () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return true;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return false;
            } else {
              return false;
            }
          }(),
          false,
        )) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SelectionArea(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Happy ',
                        style: FlutterFlowTheme.of(context)
                            .displayMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .displayMediumFamily,
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
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
                                  FlutterFlowTheme.of(context)
                                      .displayMediumFamily),
                            ),
                      ),
                      Text(
                        'Clients',
                        style: FlutterFlowTheme.of(context)
                            .displayMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .displayMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
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
                                  FlutterFlowTheme.of(context)
                                      .displayMediumFamily),
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.customerReviewCompMobileModel1,
                    updateCallback: () => setState(() {}),
                    child: const CustomerReviewCompMobileWidget(),
                  ),
                ),
              ],
            ),
          );
        } else if (valueOrDefault<bool>(
          () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return false;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return true;
            } else {
              return false;
            }
          }(),
          false,
        )) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectionArea(
                        child: Text(
                      'Happy ',
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displayMediumFamily,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
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
                                    FlutterFlowTheme.of(context)
                                        .displayMediumFamily),
                              ),
                    )),
                    SelectionArea(
                        child: Text(
                      'Clients',
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displayMediumFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
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
                                    FlutterFlowTheme.of(context)
                                        .displayMediumFamily),
                              ),
                    )),
                  ],
                ),
                wrapWithModel(
                  model: _model.customerReviewCompMobileModel2,
                  updateCallback: () => setState(() {}),
                  child: const CustomerReviewCompMobileWidget(),
                ),
              ].divide(const SizedBox(height: 40.0)),
            ),
          );
        } else {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SelectionArea(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Happy ',
                        style: FlutterFlowTheme.of(context)
                            .displayMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .displayMediumFamily,
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
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
                                  FlutterFlowTheme.of(context)
                                      .displayMediumFamily),
                            ),
                      ),
                      Text(
                        'Clients',
                        style: FlutterFlowTheme.of(context)
                            .displayMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .displayMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
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
                                  FlutterFlowTheme.of(context)
                                      .displayMediumFamily),
                            ),
                      ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.customerReviewCompModel,
                  updateCallback: () => setState(() {}),
                  child: const CustomerReviewCompWidget(),
                ),
              ].divide(const SizedBox(height: 40.0)),
            ),
          );
        }
      },
    );
  }
}
