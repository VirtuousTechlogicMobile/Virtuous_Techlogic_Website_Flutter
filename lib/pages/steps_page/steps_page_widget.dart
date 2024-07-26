import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/process_step_comp/process_step_comp_widget.dart';
import '/components/request_quote_comp/request_quote_comp_widget.dart';
import '/components/seven_steps_comp/seven_steps_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'steps_page_model.dart';
export 'steps_page_model.dart';

class StepsPageWidget extends StatefulWidget {
  const StepsPageWidget({super.key});

  @override
  State<StepsPageWidget> createState() => _StepsPageWidgetState();
}

class _StepsPageWidgetState extends State<StepsPageWidget>
    with TickerProviderStateMixin {
  late StepsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasEndDrawerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepsPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'stepsPage'});
    animationsMap.addAll({
      'endDrawerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        endDrawer: Drawer(
          elevation: 50.0,
          child: wrapWithModel(
            model: _model.sidebarCompModel,
            updateCallback: () => setState(() {}),
            child: SidebarCompWidget(),
          ),
        ).animateOnActionTrigger(
            animationsMap['endDrawerOnActionTriggerAnimation']!,
            hasBeenTriggered: hasEndDrawerTriggered),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (valueOrDefault<bool>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return true;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return false;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return false;
                  } else {
                    return false;
                  }
                }(),
                false,
              )) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.mobileHeaderCompModel,
                      updateCallback: () => setState(() {}),
                      child: MobileHeaderCompWidget(
                        index: 2,
                        drawerCallBack: () async {
                          logFirebaseEvent('STEPS_Container_9m4yzq4a_CALLBACK');
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.processStepCompModel1,
                                  updateCallback: () => setState(() {}),
                                  child: ProcessStepCompWidget(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 30.0, 20.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.sevenStepsCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: SevenStepsCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.requestQuoteCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: RequestQuoteCompWidget(
                                      email: 'info@virtuoustechlogic.com',
                                      callNumber: '6377231496',
                                      whatsappNumber: '6377231496',
                                      descriptionText:
                                          'Our goal is to help businesses and entrepreneurs bring their ideas to life and deliver outstanding user experiences to their customers. With a passion for innovation and a dedication to excellence, we are committed to delivering top-notch results that meet the unique needs of each of our clients.',
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.footerCompModel1,
                                  updateCallback: () => setState(() {}),
                                  child: FooterCompWidget(),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 40.0, 50.0),
                            child: wrapWithModel(
                              model: _model.whatsapStickyCompModel1,
                              updateCallback: () => setState(() {}),
                              child: WhatsapStickyCompWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else if (valueOrDefault<bool>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return false;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return true;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return false;
                  } else {
                    return false;
                  }
                }(),
                false,
              )) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.tabletHeaderCompModel,
                      updateCallback: () => setState(() {}),
                      child: TabletHeaderCompWidget(
                        drawerCallback: () async {
                          logFirebaseEvent('STEPS_Container_c6l4k1mr_CALLBACK');
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.processStepCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: ProcessStepCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 30.0, 30.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.sevenStepsCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: SevenStepsCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.requestQuoteCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: RequestQuoteCompWidget(
                                      formImage:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/i7aqqef4x1j4/about2.png',
                                      email: 'info@virtuoustechlogic.com',
                                      callNumber: '6377231496',
                                      whatsappNumber: '6377231496',
                                      descriptionText:
                                          'Our goal is to help businesses and entrepreneurs bring their ideas to life and deliver outstanding user experiences to their customers. With a passion for innovation and a dedication to excellence, we are committed to delivering top-notch results that meet the unique needs of each of our clients.',
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.footerCompModel2,
                                  updateCallback: () => setState(() {}),
                                  child: FooterCompWidget(),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 40.0, 50.0),
                            child: wrapWithModel(
                              model: _model.whatsapStickyCompModel2,
                              updateCallback: () => setState(() {}),
                              child: WhatsapStickyCompWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.desktopHeaderCompModel,
                      updateCallback: () => setState(() {}),
                      child: DesktopHeaderCompWidget(
                        indexParameter: 2,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.9,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.processStepCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: ProcessStepCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      50.0, 30.0, 50.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.sevenStepsCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: SevenStepsCompWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 60.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.requestQuoteCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: RequestQuoteCompWidget(
                                      formImage:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/i7aqqef4x1j4/about2.png',
                                      email: 'info@virtuoustechlogic.com',
                                      callNumber: '6377231496',
                                      whatsappNumber: '6377231496',
                                      descriptionText:
                                          'Our goal is to help businesses and entrepreneurs bring their ideas to life and deliver outstanding user experiences to their customers. With a passion for innovation and a dedication to excellence, we are committed to delivering top-notch results that meet the unique needs of each of our clients.',
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.footerCompModel3,
                                  updateCallback: () => setState(() {}),
                                  child: FooterCompWidget(),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 40.0, 50.0),
                            child: wrapWithModel(
                              model: _model.whatsapStickyCompModel3,
                              updateCallback: () => setState(() {}),
                              child: WhatsapStickyCompWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
