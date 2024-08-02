import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/explore_our_blogs_comp/explore_our_blogs_comp_widget.dart';
import '/components/explore_our_offering_comp/explore_our_offering_comp_widget.dart';
import '/components/first_comp/first_comp_widget.dart';
import '/components/first_comptablet/first_comptablet_widget.dart';
import '/components/firstcomp_mobile/firstcomp_mobile_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/our_culture_comp/our_culture_comp_widget.dart';
import '/components/our_customer_says_comp/our_customer_says_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/components/why_choose_us_for_home_comp/why_choose_us_for_home_comp_widget.dart';
import '/components/why_choose_us_for_mobile_comp/why_choose_us_for_mobile_comp_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_model.dart';

export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasEndDrawerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'homePage'});
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
            child: const SidebarCompWidget(),
          ),
        ).animateOnActionTrigger(
            animationsMap['endDrawerOnActionTriggerAnimation']!,
            hasBeenTriggered: hasEndDrawerTriggered),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: const AlignmentDirectional(1.0, 1.0),
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    if (valueOrDefault<bool>(
                      () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return true;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
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
                              index: 0,
                              drawerCallBack: () async {
                                logFirebaseEvent(
                                    'HOME_Container_m3fbc87w_CALLBACK');
                                scaffoldKey.currentState!.openEndDrawer();
                              },
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  wrapWithModel(
                                    model: _model.firstcompMobileModel,
                                    updateCallback: () => setState(() {}),
                                    child: const FirstcompMobileWidget(),
                                  ),
                                  const SizedBox(
                                    width: double.infinity,
                                    height: 100.0,
                                    child: custom_widgets.LanguageComp(
                                      width: double.infinity,
                                      height: 100.0,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 40.0, 16.0, 0.0),
                                    child: wrapWithModel(
                                      model:
                                          _model.exploreOurOfferingCompModel1,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          const ExploreOurOfferingCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 40.0, 16.0, 0.0),
                                    child: wrapWithModel(
                                      model:
                                          _model.whyChooseUsForMobileCompModel,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          const WhyChooseUsForMobileCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 40.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.ourCultureCompModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const OurCultureCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 40.0, 16.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.ourCustomerSaysCompModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const OurCustomerSaysCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 40.0, 16.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.exploreOurBlogsCompModel1,
                                      updateOnChange: true,
                                      updateCallback: () => setState(() {}),
                                      child: const ExploreOurBlogsCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
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
                                    'HOME_Container_u6r26kn6_CALLBACK');
                                scaffoldKey.currentState!.openEndDrawer();
                              },
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.firstComptabletModel,
                                    updateCallback: () => setState(() {}),
                                    child: const FirstComptabletWidget(),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model:
                                          _model.exploreOurOfferingCompModel2,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          const ExploreOurOfferingCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model:
                                          _model.whyChooseUsForHomeCompModel1,
                                      updateCallback: () => setState(() {}),
                                      child:
                                          const WhyChooseUsForHomeCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 40.0, 16.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.ourCultureCompModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const OurCultureCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.ourCustomerSaysCompModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const OurCustomerSaysCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.exploreOurBlogsCompModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const ExploreOurBlogsCompWidget(),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
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
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.desktopHeaderCompModel,
                            updateCallback: () => setState(() {}),
                            child: const DesktopHeaderCompWidget(
                              indexParameter: 0,
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.firstCompModel,
                                    updateCallback: () => setState(() {}),
                                    child: const FirstCompWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.exploreOurOfferingCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const ExploreOurOfferingCompWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.whyChooseUsForHomeCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const WhyChooseUsForHomeCompWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.ourCultureCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const OurCultureCompWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.ourCustomerSaysCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const OurCustomerSaysCompWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.exploreOurBlogsCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const ExploreOurBlogsCompWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.footerCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const FooterCompWidget(),
                                  ),
                                ].divide(const SizedBox(height: 50)),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 40.0),
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
