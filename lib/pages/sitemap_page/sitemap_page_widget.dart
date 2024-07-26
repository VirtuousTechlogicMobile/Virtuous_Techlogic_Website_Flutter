import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/sitemap_text_comp/sitemap_text_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sitemap_page_model.dart';
export 'sitemap_page_model.dart';

class SitemapPageWidget extends StatefulWidget {
  const SitemapPageWidget({
    super.key,
    required this.index,
  });

  final int? index;

  @override
  State<SitemapPageWidget> createState() => _SitemapPageWidgetState();
}

class _SitemapPageWidgetState extends State<SitemapPageWidget> {
  late SitemapPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SitemapPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'sitemapPage'});
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
        ),
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
                        index: 1,
                        drawerCallBack: () async {
                          logFirebaseEvent(
                              'SITEMAP_Container_eltldsxz_CALLBACK');
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
                                  model: _model.sitemapTextCompModel1,
                                  updateCallback: () => setState(() {}),
                                  child: SitemapTextCompWidget(),
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
                          logFirebaseEvent(
                              'SITEMAP_Container_f3q1amop_CALLBACK');
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
                                  model: _model.sitemapTextCompModel2,
                                  updateCallback: () => setState(() {}),
                                  child: SitemapTextCompWidget(),
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
                        indexParameter: 1,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.sitemapTextCompModel3,
                                  updateCallback: () => setState(() {}),
                                  child: SitemapTextCompWidget(),
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
