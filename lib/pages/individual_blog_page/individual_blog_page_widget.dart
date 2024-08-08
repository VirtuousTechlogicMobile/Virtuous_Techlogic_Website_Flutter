import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/individual_blog_comp/individual_blog_comp_widget.dart';
import '/components/related_blog_comp/related_blog_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../../components/mobile_header_comp/mobile_header_comp_widget.dart';
import '../../components/tablet_header_comp/tablet_header_comp_widget.dart';
import '../../components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import 'individual_blog_page_model.dart';

export 'individual_blog_page_model.dart';

class IndividualBlogPageWidget extends StatefulWidget {
  const IndividualBlogPageWidget({
    super.key,
    required this.blogTitle,
  });

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
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndividualBlogPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'individualBlogPage'});
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await fetchBlogData();
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

  Future<void> fetchBlogData() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('blogDetails')
          .where('title', isEqualTo: widget.blogTitle)
          .limit(1)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        final documentSnapshot = querySnapshot.docs.first;
        _model.individualBlogResult =
            BlogDetailsRecord.fromSnapshot(documentSnapshot);
      } else {
        print('No blog found with title: ${widget.blogTitle}');
      }
    } catch (e) {
      print('Error fetching blog details: $e');
    }
    setState(() {
      isLoading = false;
    });
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
          child: Stack(
            alignment: const AlignmentDirectional(1.0, 1.0),
            children: [
              if (isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (MediaQuery.of(context).size.width < kBreakpointSmall)
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
                      )
                    else if (MediaQuery.of(context).size.width <
                        kBreakpointMedium)
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
                      )
                    else
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 30.0),
                              child: wrapWithModel(
                                model: _model.individualBlogCompModel3,
                                updateCallback: () => setState(() {}),
                                child: Container(
                                  constraints: BoxConstraints(maxWidth: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 328.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 750.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 1500.0;
                                    } else {
                                      return 1500.0;
                                    }
                                  }()),
                                  child: IndividualBlogCompWidget(
                                    individualBlogImage: valueOrDefault<String>(
                                      _model.individualBlogResult?.image,
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ojp553es6376/virtuous-logo-only.png',
                                    ),
                                    individualBlogTitle: valueOrDefault<String>(
                                      _model.individualBlogResult?.title,
                                      'Blog title',
                                    ),
                                    individualBlogDate: valueOrDefault<String>(
                                      _model.individualBlogResult?.name,
                                      'blog Date',
                                    ),
                                    individualBlogDescription:
                                        valueOrDefault<String>(
                                      _model.individualBlogResult?.description,
                                      'Description',
                                    ),
                                    individualeditdescription:
                                        valueOrDefault<String>(
                                      _model.individualBlogResult
                                          ?.editDescription,
                                      '[{\"insert\":\"ourCulture\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 40.0),
                              child: wrapWithModel(
                                model: _model.relatedBlogCompModel1,
                                updateCallback: () => setState(() {}),
                                child: const RelatedBlogCompWidget(),
                              ),
                            ),
                            const SizedBox(
                                height: 30.0), // Add space before footer
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
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
