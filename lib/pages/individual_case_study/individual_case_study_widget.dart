import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
  bool _isLoading = true; // Loading state variable
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
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
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
    // Simulate data fetching
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Simulate network delay
      setState(() {
        _isLoading = false; // Set loading to false when data is ready
      });
    });
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
            child: const SidebarCompWidget(),
          ),
        ).animateOnActionTrigger(
            animationsMap['endDrawerOnActionTriggerAnimation']!,
            hasBeenTriggered: hasEndDrawerTriggered),
        body: SafeArea(
          top: true,
          child: _isLoading // Check if loading
              ? const Center(
                  child:
                      CircularProgressIndicator(), // Display loading indicator
                )
              : Stack(
                  alignment: const AlignmentDirectional(1.0, 1.0),
                  children: [
                    Builder(
                      builder: (context) {
                        if (valueOrDefault<bool>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
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
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(20.0, 0.0, 20.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model
                                              .individualCaseStudyCompModel1,
                                          updateCallback: () => setState(() {}),
                                          child: IndividualCaseStudyCompWidget(
                                            title: widget!.ref!.title,
                                            introduction:
                                                widget!.ref!.introduction,
                                            description:
                                                widget!.ref!.description,
                                            mainImage: widget!.ref!.image,
                                            descriptionImage:
                                                widget!.ref!.descriptionImage,
                                            featuresImage:
                                                widget!.ref!.featureImage,
                                            features: widget!.ref!.features,
                                            editDescription:
                                                valueOrDefault<String>(
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
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 50.0, 0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .screenShotComponentModel1,
                                            updateCallback: () =>
                                                setState(() {}),
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
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0.0, 30.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.footerCompModel1,
                                          updateCallback: () => setState(() {}),
                                          child: const FooterCompWidget(),
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
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
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
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(30.0, 30.0, 30.0, 0.0),
                                        child: Container(
                                          child: wrapWithModel(
                                            model: _model
                                                .individualCaseStudyCompModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: Container(
                                              constraints: BoxConstraints(
                                                  maxWidth:
                                                      getMaxWidth(context)),
                                              child:
                                                  IndividualCaseStudyCompWidget(
                                                title: widget!.ref!.title,
                                                introduction:
                                                    widget!.ref!.introduction,
                                                description:
                                                    widget!.ref!.description,
                                                mainImage: widget!.ref!.image,
                                                descriptionImage: widget!
                                                    .ref!.descriptionImage,
                                                featuresImage:
                                                    widget!.ref!.featureImage,
                                                features: widget!.ref!.features,
                                                editDescription:
                                                    valueOrDefault<String>(
                                                  widget!.ref?.editDescription,
                                                  '[{\"insert\":\"Case Studies\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                                ),
                                              ),
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
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(30.0, 30.0, 30.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .screenShotComponentModel2,
                                            updateCallback: () =>
                                                setState(() {}),
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
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0.0, 40.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.footerCompModel2,
                                          updateCallback: () => setState(() {}),
                                          child: const FooterCompWidget(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        } else {
                          return Builder(builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      1.0, 0.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.desktopHeaderCompModel,
                                    updateCallback: () => setState(() {}),
                                    child: const DesktopHeaderCompWidget(
                                      indexParameter: 4,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(80, 200, 0, 0),
                                            child: Container(
                                              width: 200,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD2E8F6),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 100,
                                                    color: Color(0xFFD2E5F2),
                                                    offset: Offset(
                                                      0.0,
                                                      0,
                                                    ),
                                                    spreadRadius: 200,
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(500),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 60, 50, 0),
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFE5D3B9),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 100,
                                                    color: Color(0x7BECD6BC),
                                                    offset: Offset(
                                                      15,
                                                      0,
                                                    ),
                                                    spreadRadius: 300,
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      60.0, 30.0, 60.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .individualCaseStudyCompModel3,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                      maxWidth:
                                                          getMaxWidth(context)),
                                                  child:
                                                      IndividualCaseStudyCompWidget(
                                                    title: widget.ref?.title,
                                                    introduction: widget
                                                        .ref?.introduction,
                                                    description:
                                                        widget.ref?.description,
                                                    mainImage:
                                                        widget.ref?.image,
                                                    descriptionImage: widget
                                                        .ref?.descriptionImage,
                                                    featuresImage: widget
                                                        .ref?.featureImage,
                                                    features:
                                                        widget.ref?.features,
                                                    editDescription: widget
                                                        .ref?.editDescription,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 30.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model.footerCompModel3,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const FooterCompWidget(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          });
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 30.0, 40.0),
                      child: wrapWithModel(
                        model: _model.whatsapStickyCompModel,
                        updateCallback: () => setState(() {}),
                        child: const WhatsapStickyCompWidget(),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
