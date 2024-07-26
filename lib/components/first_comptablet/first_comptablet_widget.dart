import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'first_comptablet_model.dart';
export 'first_comptablet_model.dart';

class FirstComptabletWidget extends StatefulWidget {
  const FirstComptabletWidget({super.key});

  @override
  State<FirstComptabletWidget> createState() => _FirstComptabletWidgetState();
}

class _FirstComptabletWidgetState extends State<FirstComptabletWidget>
    with TickerProviderStateMixin {
  late FirstComptabletModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstComptabletModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 1800.0.ms,
            begin: Offset(0, 0),
            end: Offset(0, 0.349),
          ),
        ],
      ),
      'languageCompDesktopOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 30.0,
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation5': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 10.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation6': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 10.0),
          ),
        ],
      ),
    });

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
      height: MediaQuery.sizeOf(context).height * 0.9,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.network(
            '',
          ).image,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 250.0, 0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          200.0, 100.0, 0.0, 0.0),
                      child: Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD2E8F6),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 100.0,
                              color: Color(0xFFD2E5F2),
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                              spreadRadius: 80.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(500.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 300.0, 0.0),
                    child: Container(
                      height: 350.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8E5CB),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 100.0,
                            color: Color(0xFFF4E3C8),
                            offset: Offset(
                              15.0,
                              0.0,
                            ),
                            spreadRadius: 80.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(500.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'We are ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Flutter ',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          TextSpan(
                            text: '& ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'FlutterFlow ',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          TextSpan(
                            text: 'App\nDevelopment Company',
                            style: TextStyle(),
                          )
                        ],
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
                                  return 36.0;
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
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                    child: Text(
                      'We are Top Rated App Development company who create \namazing apps for world class companies 10X faster.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            fontSize: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 16.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 16.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 16.0;
                              } else {
                                return 16.0;
                              }
                            }(),
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                            lineHeight: 1.5,
                          ),
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Builder(
                            builder: (context) => wrapWithModel(
                              model: _model.getInTouchButtonCompModel,
                              updateCallback: () => setState(() {}),
                              child: GetInTouchButtonCompWidget(
                                buttonName: 'Get in Touch',
                                buttonAction: () async {
                                  logFirebaseEvent(
                                      'FIRST_COMPTABLET_Container_ra2dh1at_CALL');
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GetInTouchComponentWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                              ),
                            ),
                          ),
                        wrapWithModel(
                          model: _model.browseServicesButtonCompModel,
                          updateCallback: () => setState(() {}),
                          child: BrowseServicesButtonCompWidget(
                            action: () async {
                              logFirebaseEvent(
                                  'FIRST_COMPTABLET_Container_srfh6fcp_CALL');

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
                          ),
                        ),
                      ].divide(SizedBox(width: 20.0)),
                    ),
                  ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: CachedNetworkImage(
                      fadeInDuration: Duration(milliseconds: 0),
                      fadeOutDuration: Duration(milliseconds: 0),
                      imageUrl:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/mjobrghz7cg0/Group_4.webp',
                      fit: BoxFit.contain,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation']!),
                ),
                wrapWithModel(
                  model: _model.languageCompDesktopModel,
                  updateCallback: () => setState(() {}),
                  child: LanguageCompDesktopWidget(),
                ).animateOnPageLoad(
                    animationsMap['languageCompDesktopOnPageLoadAnimation']!),
              ],
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: AlignmentDirectional(-1.19, -0.71),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 350.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.035,
                  height: MediaQuery.sizeOf(context).width * 0.035,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_8.png',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation1']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: AlignmentDirectional(-0.67, -0.63),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.05,
                height: MediaQuery.sizeOf(context).width * 0.05,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Frame_10.png',
                  fit: BoxFit.cover,
                  alignment: Alignment(0.0, -1.0),
                ),
              ).animateOnPageLoad(
                  animationsMap['circleImageOnPageLoadAnimation2']!),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: AlignmentDirectional(-0.9, -0.81),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.043,
                  height: MediaQuery.sizeOf(context).width * 0.043,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_5.png',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation3']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: AlignmentDirectional(0.54, -0.59),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.03,
                  height: MediaQuery.sizeOf(context).width * 0.03,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_5.png',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation4']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: AlignmentDirectional(0.76, -0.68),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 350.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.04,
                  height: MediaQuery.sizeOf(context).width * 0.04,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_10.png',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation5']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Align(
              alignment: AlignmentDirectional(0.75, -0.8),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                  height: MediaQuery.sizeOf(context).width * 0.05,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Frame_8.png',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, -1.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['circleImageOnPageLoadAnimation6']!),
              ),
            ),
        ],
      ),
    );
  }
}
