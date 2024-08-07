import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/more_blog_comp/more_blog_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'more_blog_model.dart';

export 'more_blog_model.dart';

class MoreBlogWidget extends StatefulWidget {
  const MoreBlogWidget({super.key});

  @override
  State<MoreBlogWidget> createState() => _MoreBlogWidgetState();
}

class _MoreBlogWidgetState extends State<MoreBlogWidget>
    with TickerProviderStateMixin {
  late MoreBlogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasEndDrawerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreBlogModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'moreBlog'});
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
                            index: 0,
                            drawerCallBack: () async {
                              logFirebaseEvent(
                                  'MORE_BLOG_Container_smf1kltj_CALLBACK');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                wrapWithModel(
                                  model: _model.moreBlogCompModel1,
                                  updateCallback: () => setState(() {}),
                                  child: MoreBlogCompWidget(
                                    blogTag:
                                        _model.moreBlogCompModel3.listOfBlogTag,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
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
                                  'MORE_BLOG_Container_t8mzha98_CALLBACK');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                wrapWithModel(
                                  model: _model.moreBlogCompModel2,
                                  updateCallback: () => setState(() {}),
                                  child: MoreBlogCompWidget(
                                    blogTag:
                                        _model.moreBlogCompModel3.listOfBlogTag,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 100.0, 0.0, 0.0),
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
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  wrapWithModel(
                                    model: _model.moreBlogCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: MoreBlogCompWidget(
                                      blogTag: _model
                                          .moreBlogCompModel1.listOfBlogTag,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.footerCompModel3,
                                      updateCallback: () => setState(() {}),
                                      child: const FooterCompWidget(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                },
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
