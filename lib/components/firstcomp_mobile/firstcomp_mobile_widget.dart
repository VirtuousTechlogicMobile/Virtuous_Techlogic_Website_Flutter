import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'firstcomp_mobile_model.dart';

export 'firstcomp_mobile_model.dart';

class FirstcompMobileWidget extends StatefulWidget {
  const FirstcompMobileWidget({super.key});

  @override
  State<FirstcompMobileWidget> createState() => _FirstcompMobileWidgetState();
}

class _FirstcompMobileWidgetState extends State<FirstcompMobileWidget>
    with TickerProviderStateMixin {
  late FirstcompMobileModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstcompMobileModel());

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
            begin: const Offset(0, 0),
            end: const Offset(0, 0.349),
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
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/nv8ho0vjtatr/Group_5.webp',
              ),
              alignment: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                child: SelectionArea(
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        const TextSpan(
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
                        const TextSpan(
                          text: '& ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: 'FlutterFlow ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        const TextSpan(
                          text: 'App\nDevelopment Company',
                          style: TextStyle(),
                        )
                      ],
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
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 0.0),
              child: SelectionArea(
                child: Text(
                  'We are Top Rated App Development company who create \n amazing apps for world class companies 10X faster.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelLargeFamily,
                        fontSize: 16,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelLargeFamily),
                        lineHeight: 1.5,
                      ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.browseServicesButtonCompModel,
                    updateCallback: () => setState(() {}),
                    child: BrowseServicesButtonCompWidget(
                      action: () async {
                        logFirebaseEvent(
                            'FIRSTMOBILE_Container_ctla16n3_CALLBACK');

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
                ].divide(const SizedBox(height: 20.0)),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/mjobrghz7cg0/Group_4.webp',
                  width: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 400.9;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 642.52;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 642.52;
                    } else {
                      return 642.52;
                    }
                  }(),
                  height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 200.17;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 400.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 400.0;
                    } else {
                      return 400.0;
                    }
                  }(),
                  fit: BoxFit.contain,
                ),
              ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            ),
          ],
        ),
      ),
    );
  }
}
