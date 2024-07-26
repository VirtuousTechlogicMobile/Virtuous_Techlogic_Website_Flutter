import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/individual_blog_comp/individual_blog_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/related_blog_comp/related_blog_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'individual_blog_page_model.dart';
export 'individual_blog_page_model.dart';

class IndividualBlogPageWidget extends StatefulWidget {
  const IndividualBlogPageWidget({
    super.key,
    required this.individualBlogRefpage,
    required this.blogTitle,
  });

  final DocumentReference? individualBlogRefpage;
  final String? blogTitle;

  @override
  State<IndividualBlogPageWidget> createState() =>
      _IndividualBlogPageWidgetState();
}

class _IndividualBlogPageWidgetState extends State<IndividualBlogPageWidget>
    with TickerProviderStateMixin {
  late IndividualBlogPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasEndDrawerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndividualBlogPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'individualBlogPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('INDIVIDUAL_BLOG_individualBlogPage_ON_IN');
      _model.individualBlogResult = await BlogDetailsRecord.getDocumentOnce(
          widget!.individualBlogRefpage!);
      _model.isLoad = false;
      setState(() {});
      await actions.metaData(
        widget!.blogTitle!,
      );
    });

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
                  if (_model.isLoad) {
                    return custom_widgets.LoaderWidget(
                      width: 100.0,
                      height: 100.0,
                    );
                  } else {
                    return Builder(
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
                                  index: 0,
                                  drawerCallBack: () async {
                                    logFirebaseEvent(
                                        'INDIVIDUAL_BLOG_Container_k2eiaai6_CALLB');
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 30.0, 10.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .individualBlogCompModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: IndividualBlogCompWidget(
                                                individualBlogImage:
                                                    valueOrDefault<String>(
                                                  _model.individualBlogDocumnet
                                                      ?.image,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ojp553es6376/virtuous-logo-only.png',
                                                ),
                                                individualBlogTitle:
                                                    valueOrDefault<String>(
                                                  _model.individualBlogDocumnet
                                                      ?.title,
                                                  'Blog title',
                                                ),
                                                individualBlogDate:
                                                    valueOrDefault<String>(
                                                  _model.individualBlogDocumnet
                                                      ?.name,
                                                  'blog Date',
                                                ),
                                                individualBlogDescription:
                                                    valueOrDefault<String>(
                                                  _model.individualBlogDocumnet
                                                      ?.description,
                                                  'Description',
                                                ),
                                                individualeditdescription:
                                                    valueOrDefault<String>(
                                                  _model.individualBlogDocumnet
                                                      ?.editDescription,
                                                  '[{\"insert\":\"ourCulture\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                                ),
                                                blogrefcomp: widget!
                                                    .individualBlogRefpage!,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 30.0, 20.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.relatedBlogCompModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: RelatedBlogCompWidget(),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.footerCompModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: FooterCompWidget(),
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
                                        'INDIVIDUAL_BLOG_Container_fpmyy60r_CALLB');
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
                                          model:
                                              _model.individualBlogCompModel2,
                                          updateCallback: () => setState(() {}),
                                          child: IndividualBlogCompWidget(
                                            individualBlogImage:
                                                valueOrDefault<String>(
                                              _model.individualBlogDocumnet
                                                  ?.image,
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ojp553es6376/virtuous-logo-only.png',
                                            ),
                                            individualBlogTitle:
                                                valueOrDefault<String>(
                                              _model.individualBlogDocumnet
                                                  ?.title,
                                              'BlogTitle',
                                            ),
                                            individualBlogDate:
                                                valueOrDefault<String>(
                                              _model
                                                  .individualBlogDocumnet?.name,
                                              'BlogDate',
                                            ),
                                            individualBlogDescription:
                                                valueOrDefault<String>(
                                              _model.individualBlogDocumnet
                                                  ?.description,
                                              'Description',
                                            ),
                                            individualeditdescription:
                                                valueOrDefault<String>(
                                              _model.individualBlogDocumnet
                                                  ?.editDescription,
                                              '[{\"insert\":\"ourCulture\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                            ),
                                            blogrefcomp:
                                                widget!.individualBlogRefpage!,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            50.0, 10.0, 50.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.relatedBlogCompModel2,
                                          updateCallback: () => setState(() {}),
                                          child: RelatedBlogCompWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
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
                            children: [
                              wrapWithModel(
                                model: _model.desktopHeaderCompModel,
                                updateCallback: () => setState(() {}),
                                child: DesktopHeaderCompWidget(
                                  indexParameter: 0,
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            48.0, 40.0, 48.0, 0.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.individualBlogCompModel3,
                                          updateCallback: () => setState(() {}),
                                          child: IndividualBlogCompWidget(
                                            individualBlogImage:
                                                valueOrDefault<String>(
                                              _model
                                                  .individualBlogResult?.image,
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ojp553es6376/virtuous-logo-only.png',
                                            ),
                                            individualBlogTitle:
                                                valueOrDefault<String>(
                                              _model
                                                  .individualBlogResult?.title,
                                              'Title',
                                            ),
                                            individualBlogDate:
                                                valueOrDefault<String>(
                                              _model.individualBlogResult?.name,
                                              'Name',
                                            ),
                                            individualBlogDescription:
                                                valueOrDefault<String>(
                                              _model.individualBlogResult
                                                  ?.description,
                                              'Description',
                                            ),
                                            individualeditdescription:
                                                valueOrDefault<String>(
                                              _model.individualBlogResult
                                                  ?.editDescription,
                                              '[{\"insert\":\"ourCulture\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                            ),
                                            blogrefcomp:
                                                widget!.individualBlogRefpage!,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            48.0, 40.0, 48.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.relatedBlogCompModel3,
                                          updateCallback: () => setState(() {}),
                                          child: RelatedBlogCompWidget(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
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
