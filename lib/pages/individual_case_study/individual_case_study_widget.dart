import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/individual_case_study_comp/individual_case_study_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/screen_shot_component/screen_shot_component_widget.dart';
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
import 'individual_case_study_model.dart';
export 'individual_case_study_model.dart';

class IndividualCaseStudyWidget extends StatefulWidget {
  const IndividualCaseStudyWidget({
    super.key,
    required this.ref,
  });

  final CaseStudiesRecord? ref;

  @override
  State<IndividualCaseStudyWidget> createState() =>
      _IndividualCaseStudyWidgetState();
}

class _IndividualCaseStudyWidgetState extends State<IndividualCaseStudyWidget>
    with TickerProviderStateMixin {
  late IndividualCaseStudyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasEndDrawerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndividualCaseStudyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'individualCaseStudy'});
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
          child: Stack(
            alignment: AlignmentDirectional(1.0, 1.0),
            children: [
              Builder(
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
                            index: 4,
                            drawerCallBack: () async {
                              logFirebaseEvent(
                                  'INDIVIDUAL_CASE_STUDY_Container_jbkalsdl');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.individualCaseStudyCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: IndividualCaseStudyCompWidget(
                                      title: widget!.ref!.title,
                                      introduction: widget!.ref!.introduction,
                                      description: widget!.ref!.description,
                                      mainImage: widget!.ref!.image,
                                      descriptionImage:
                                          widget!.ref!.descriptionImage,
                                      featuresImage: widget!.ref!.featureImage,
                                      features: widget!.ref!.features,
                                      editDescription: valueOrDefault<String>(
                                        widget!.ref?.editDescription,
                                        '[{\"insert\":\"Product\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                      ),
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.screenShotComponentModel1,
                                      updateCallback: () => setState(() {}),
                                      child: ScreenShotComponentWidget(
                                        mobileImagelist:
                                            widget!.ref?.mobileImages,
                                        tabletImagelist:
                                            widget!.ref?.tabletImages,
                                        desktopImagelist:
                                            widget!.ref?.desktopImages,
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.footerCompModel1,
                                    updateCallback: () => setState(() {}),
                                    child: FooterCompWidget(),
                                  ),
                                ),
                              ],
                            ),
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
                              logFirebaseEvent(
                                  'INDIVIDUAL_CASE_STUDY_Container_0s2246pd');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 30.0, 30.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.individualCaseStudyCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: IndividualCaseStudyCompWidget(
                                      title: widget!.ref!.title,
                                      introduction: widget!.ref!.introduction,
                                      description: widget!.ref!.description,
                                      mainImage: widget!.ref!.image,
                                      descriptionImage:
                                          widget!.ref!.descriptionImage,
                                      featuresImage: widget!.ref!.featureImage,
                                      features: widget!.ref!.features,
                                      editDescription: valueOrDefault<String>(
                                        widget!.ref?.editDescription,
                                        '[{\"insert\":\"Case Studies\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                      ),
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 30.0, 30.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.screenShotComponentModel2,
                                      updateCallback: () => setState(() {}),
                                      child: ScreenShotComponentWidget(
                                        mobileImagelist:
                                            widget!.ref?.mobileImages,
                                        tabletImagelist:
                                            widget!.ref?.tabletImages,
                                        desktopImagelist:
                                            widget!.ref?.desktopImages,
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.footerCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: FooterCompWidget(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.desktopHeaderCompModel,
                            updateCallback: () => setState(() {}),
                            child: DesktopHeaderCompWidget(
                              indexParameter: 4,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      60.0, 30.0, 60.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.individualCaseStudyCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: IndividualCaseStudyCompWidget(
                                      title: widget!.ref!.title,
                                      introduction: widget!.ref!.introduction,
                                      description: widget!.ref!.description,
                                      mainImage: widget!.ref!.image,
                                      descriptionImage:
                                          widget!.ref!.descriptionImage,
                                      featuresImage: widget!.ref!.featureImage,
                                      features: widget!.ref!.features,
                                      editDescription:
                                          widget!.ref?.editDescription,
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 30.0, 20.0),
                                    child: wrapWithModel(
                                      model: _model.screenShotComponentModel3,
                                      updateCallback: () => setState(() {}),
                                      child: ScreenShotComponentWidget(
                                        mobileImage: widget!.ref?.image,
                                        tabletImage: widget!.ref?.featureImage,
                                        desktopImage:
                                            widget!.ref?.descriptionImage,
                                        mobileImagelist:
                                            widget!.ref?.mobileImages,
                                        tabletImagelist:
                                            widget!.ref?.tabletImages,
                                        desktopImagelist:
                                            widget!.ref?.desktopImages,
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.footerCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: FooterCompWidget(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 40.0),
                child: wrapWithModel(
                  model: _model.whatsapStickyCompModel,
                  updateCallback: () => setState(() {}),
                  child: WhatsapStickyCompWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
