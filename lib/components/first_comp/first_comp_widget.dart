import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/button_component/browse_services_button_comp/browse_services_button_comp_widget.dart';
import '/components/circle_image_animation_widget.dart';
import '/components/language_comp_desktop/language_comp_desktop_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'first_comp_model.dart';

export 'first_comp_model.dart';

class FirstCompWidget extends StatefulWidget {
  const FirstCompWidget({super.key});

  @override
  State<FirstCompWidget> createState() => _FirstCompWidgetState();
}

class _FirstCompWidgetState extends State<FirstCompWidget>
    with TickerProviderStateMixin {
  late FirstCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstCompModel());

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
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Container(
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
          alignment: const AlignmentDirectional(0, 0),
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 250, 0, 0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(200, 100, 0, 0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD2E5F2),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 100,
                                color: Color(0xFFD2E5F2),
                                offset: Offset(
                                  0.0,
                                  0,
                                ),
                                spreadRadius: 115,
                              )
                            ],
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 50, 300, 0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                        child: Container(
                          height: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xfff8e6ce),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 100,
                                color: Color(0xFFF4E3C8),
                                offset: Offset(
                                  0.0,
                                  0,
                                ),
                                spreadRadius: 80,
                              )
                            ],
                            borderRadius: BorderRadius.circular(500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 40),
                      child: custom_widgets.RichText(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: MediaQuery.sizeOf(context).height * 0.12,
                        text1: 'We are ',
                        text2: 'Flutter ',
                        text3: '& ',
                        text4: 'FlutterFlow ',
                        text5: 'App\nDevelopment Company',
                        color1: FlutterFlowTheme.of(context).primaryText,
                        color2: FlutterFlowTheme.of(context).primary,
                        color3: FlutterFlowTheme.of(context).primaryText,
                        color4: FlutterFlowTheme.of(context).primary,
                        color5: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  SelectionArea(
                      child: Text(
                    'We are Top Rated App Development company who create \namazing apps for world class companies 10X faster.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          letterSpacing: 0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelLargeFamily),
                          lineHeight: 1.5,
                        ),
                  )),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                    child: wrapWithModel(
                      model: _model.browseServicesButtonCompModel,
                      updateCallback: () => setState(() {}),
                      child: BrowseServicesButtonCompWidget(
                        action: () async {
                          logFirebaseEvent('FIRST_Container_10si31b8_CALLBACK');

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
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: CachedNetworkImage(
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
                    child: const LanguageCompDesktopWidget(),
                  ).animateOnPageLoad(
                      animationsMap['languageCompDesktopOnPageLoadAnimation']!),
                ],
              ),
            ),

            /// flutterflow image
            wrapWithModel(
              model: _model.circleImageAnimationModel1,
              updateCallback: () => setState(() {}),
              child: const CircleImageAnimationWidget(
                delayAnimationTime: 600.0,
                diameterWidth: 80.0,
                imageName:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/wq16ltz3z0zp/Frame_8.webp',
                durationAnimation: 600.0,
                finalPosition: 10.0,
                xPosition: 0.675,
                yPosition: -0.059,
              ),
            ),

            /// figma image
            wrapWithModel(
              model: _model.circleImageAnimationModel2,
              updateCallback: () => setState(() {}),
              child: const CircleImageAnimationWidget(
                delayAnimationTime: 500.0,
                diameterWidth: 60.0,
                imageName:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/7uf3bxilokcs/Frame_10.webp',
                durationAnimation: 600.0,
                finalPosition: 10.0,
                xPosition: 0.68,
                yPosition: -0.585,
              ),
            ),

            /// flutter image left side
            wrapWithModel(
              model: _model.circleImageAnimationModel3,
              updateCallback: () => setState(() {}),
              child: const CircleImageAnimationWidget(
                delayAnimationTime: 400.0,
                diameterWidth: 40.0,
                imageName:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/hwfbx5qnm3y8/Frame_5.webp',
                durationAnimation: 600.0,
                finalPosition: 10.0,
                xPosition: 0.435,
                yPosition: -0.32,
              ),
            ),

            /// right Flutter Image
            wrapWithModel(
              model: _model.circleImageAnimationModel4,
              updateCallback: () => setState(() {}),
              child: const CircleImageAnimationWidget(
                delayAnimationTime: 100.0,
                diameterWidth: 70.0,
                imageName:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/hwfbx5qnm3y8/Frame_5.webp',
                durationAnimation: 600.0,
                finalPosition: 10.0,
                xPosition: -0.842,
                yPosition: 0.002,
              ),
            ),

            /// Figma Image
            wrapWithModel(
              model: _model.circleImageAnimationModel5,
              updateCallback: () => setState(() {}),
              child: const CircleImageAnimationWidget(
                delayAnimationTime: 200.0,
                diameterWidth: 60.0,
                imageName:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/7uf3bxilokcs/Frame_10.webp',
                durationAnimation: 600.0,
                finalPosition: 10.0,
                xPosition: -0.666,
                yPosition: -0.338,
              ),
            ),

            /// FlutterFlow image
            wrapWithModel(
              model: _model.circleImageAnimationModel6,
              updateCallback: () => setState(() {}),
              child: const CircleImageAnimationWidget(
                delayAnimationTime: 300.0,
                diameterWidth: 50.0,
                imageName:
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/wq16ltz3z0zp/Frame_8.webp',
                durationAnimation: 600.0,
                finalPosition: 10.0,
                xPosition: -0.75,
                yPosition: -0.584,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
