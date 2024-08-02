import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/explore_product_comp/explore_product_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/our_product_detail_comp/our_product_detail_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'individual_product_page_model.dart';

export 'individual_product_page_model.dart';

class IndividualProductPageWidget extends StatefulWidget {
  const IndividualProductPageWidget({
    super.key,
    required this.productRef,
    this.productTitle,
  });

  final BuildProductRecord? productRef;
  final String? productTitle;

  @override
  State<IndividualProductPageWidget> createState() =>
      _IndividualProductPageWidgetState();
}

class _IndividualProductPageWidgetState
    extends State<IndividualProductPageWidget> with TickerProviderStateMixin {
  late IndividualProductPageModel _model;
  bool _isLoading = true; // Loading state variable

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasEndDrawerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndividualProductPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'IndividualProductPage'});
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
      await Future.delayed(
          const Duration(seconds: 2)); // Simulate network delay
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
          child: _isLoading // Check if loading
              ? Center(
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
                                  index: 3,
                                  drawerCallBack: () async {
                                    logFirebaseEvent(
                                        'INDIVIDUAL_PRODUCT_Container_r2ba2174_CA');
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model:
                                            _model.ourProductDetailCompModel1,
                                        updateCallback: () => setState(() {}),
                                        child: Container(
                                          constraints: BoxConstraints(
                                              maxWidth: getMaxWidth(context)),
                                          child: OurProductDetailCompWidget(
                                            imagePath: widget.productRef?.image,
                                            title:
                                                widget.productRef?.title ?? '',
                                            description: widget
                                                    .productRef?.description ??
                                                '',
                                            features:
                                                widget.productRef?.features,
                                            editDescription:
                                                valueOrDefault<String>(
                                              widget
                                                  .productRef?.editDescription,
                                              '[{\"insert\":\"Product\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"}]',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth: getMaxWidth(context)),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(10.0, 40.0, 10.0, 0.0),
                                          child: wrapWithModel(
                                            model:
                                                _model.exploreProductCompModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const ExploreProductCompWidget(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0.0, 40.0, 0.0, 0.0),
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
                                        'INDIVIDUAL_PRODUCT_Container_o8ze9lrn_CA');
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(50.0, 30.0, 50.0, 0.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.ourProductDetailCompModel2,
                                          updateCallback: () => setState(() {}),
                                          child: Container(
                                            constraints: BoxConstraints(
                                                maxWidth: getMaxWidth(context)),
                                            child: OurProductDetailCompWidget(
                                              imagePath:
                                                  widget.productRef?.image,
                                              title: widget.productRef?.title ??
                                                  '',
                                              description: widget.productRef
                                                      ?.description ??
                                                  '',
                                              features:
                                                  widget.productRef?.features,
                                              editDescription:
                                                  valueOrDefault<String>(
                                                widget.productRef
                                                    ?.editDescription,
                                                '[{\"insert\":\"ourCulture\",\"attributes\":{\"bold\":true}},{\"insert\":\"\\n\"},{\"insert\":\"dasdssfsf\",\"attributes\":{\"bold\":true,\"underline\":true}},{\"insert\":\"\\n\",\"attributes\":{\"list\":\"bullet\"}}]',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth: getMaxWidth(context)),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(50.0, 30.0, 50.0, 0.0),
                                          child: wrapWithModel(
                                            model:
                                                _model.exploreProductCompModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const ExploreProductCompWidget(),
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
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.desktopHeaderCompModel,
                                updateCallback: () => setState(() {}),
                                child: const DesktopHeaderCompWidget(
                                  indexParameter: 3,
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(121.0, 40.0, 121.0, 0.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.ourProductDetailCompModel3,
                                          updateCallback: () => setState(() {}),
                                          child: Container(
                                            constraints: BoxConstraints(
                                                maxWidth: getMaxWidth(context)),
                                            child: OurProductDetailCompWidget(
                                              imagePath:
                                                  widget.productRef?.image ??
                                                      '',
                                              title: widget.productRef?.title ??
                                                  "title",
                                              description: widget.productRef
                                                      ?.description ??
                                                  'description',
                                              features:
                                                  widget.productRef?.features,
                                              editDescription: widget
                                                  .productRef?.editDescription,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth: getMaxWidth(context)),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(70.0, 50.0, 70.0, 0.0),
                                          child: wrapWithModel(
                                            model:
                                                _model.exploreProductCompModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                const ExploreProductCompWidget(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0.0, 50.0, 0.0, 0.0),
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
                            ],
                          );
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
