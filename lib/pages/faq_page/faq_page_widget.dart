import 'package:flutter/material.dart';

import '/backend/backend.dart';
import '/components/desktop_header_comp/desktop_header_comp_widget.dart';
import '/components/faq_comp/faq_comp_widget.dart';
import '/components/faq_textcomp/faq_textcomp_widget.dart';
import '/components/footer_comp/footer_comp_widget.dart';
import '/components/mobile_header_comp/mobile_header_comp_widget.dart';
import '/components/sidebar_comp/sidebar_comp_widget.dart';
import '/components/tablet_header_comp/tablet_header_comp_widget.dart';
import '/components/whatsap_sticky_comp/whatsap_sticky_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'faq_page_model.dart';

export 'faq_page_model.dart';

class FaqPageWidget extends StatefulWidget {
  const FaqPageWidget({
    super.key,
    required this.index,
  });

  final int? index;

  @override
  State<FaqPageWidget> createState() => _FaqPageWidgetState();
}

class _FaqPageWidgetState extends State<FaqPageWidget> {
  late FaqPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'faqPage'});
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
                return Stack(
                  alignment: const AlignmentDirectional(1.0, 1.0),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.mobileHeaderCompModel,
                          updateCallback: () => setState(() {}),
                          child: MobileHeaderCompWidget(
                            index: 1,
                            drawerCallBack: () async {
                              logFirebaseEvent(
                                  'FAQ_Container_hinf78y9_CALLBACK');
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
                                  model: _model.faqCompModel1,
                                  updateCallback: () => setState(() {}),
                                  child: const FaqCompWidget(),
                                ),
                                StreamBuilder<List<FaqRecord>>(
                                  stream: queryFaqRecord(
                                    queryBuilder: (faqRecord) =>
                                        faqRecord.where(
                                      'status',
                                      isEqualTo: true,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<FaqRecord> listViewFaqRecordList =
                                        snapshot.data!;

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: listViewFaqRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewFaqRecord =
                                            listViewFaqRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(20.0, 20.0, 20.0, 0.0),
                                          child: FaqTextcompWidget(
                                            key: Key(
                                                'Keyunz_${listViewIndex}_of_${listViewFaqRecordList.length}'),
                                            question:
                                                listViewFaqRecord.question,
                                            answer: listViewFaqRecord.answer,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.footerCompModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const FooterCompWidget(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 40.0, 50.0),
                      child: wrapWithModel(
                        model: _model.whatsapStickyCompModel1,
                        updateCallback: () => setState(() {}),
                        child: const WhatsapStickyCompWidget(),
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
                return Stack(
                  alignment: const AlignmentDirectional(1.0, 1.0),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.tabletHeaderCompModel,
                          updateCallback: () => setState(() {}),
                          child: TabletHeaderCompWidget(
                            drawerCallback: () async {
                              logFirebaseEvent(
                                  'FAQ_Container_rfxkgqog_CALLBACK');
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  wrapWithModel(
                                    model: _model.faqCompModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const FaqCompWidget(),
                                  ),
                                  StreamBuilder<List<FaqRecord>>(
                                    stream: queryFaqRecord(
                                      queryBuilder: (faqRecord) =>
                                          faqRecord.where(
                                        'status',
                                        isEqualTo: true,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<FaqRecord> listViewFaqRecordList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewFaqRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewFaqRecord =
                                              listViewFaqRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                20.0, 20.0, 20.0, 0.0),
                                            child: FaqTextcompWidget(
                                              key: Key(
                                                  'Keyt5z_${listViewIndex}_of_${listViewFaqRecordList.length}'),
                                              question:
                                                  listViewFaqRecord.question,
                                              answer: listViewFaqRecord.answer,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 30.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.footerCompModel2,
                                        updateCallback: () => setState(() {}),
                                        child: const FooterCompWidget(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 40.0, 50.0),
                      child: wrapWithModel(
                        model: _model.whatsapStickyCompModel2,
                        updateCallback: () => setState(() {}),
                        child: const WhatsapStickyCompWidget(),
                      ),
                    ),
                  ],
                );
              } else {
                return Stack(
                  alignment: const AlignmentDirectional(1.0, 1.0),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.desktopHeaderCompModel,
                          updateCallback: () => setState(() {}),
                          child: const DesktopHeaderCompWidget(),
                        ),
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  wrapWithModel(
                                    model: _model.faqCompModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const FaqCompWidget(),
                                  ),
                                  StreamBuilder<List<FaqRecord>>(
                                    stream: queryFaqRecord(
                                      queryBuilder: (faqRecord) =>
                                          faqRecord.where(
                                        'status',
                                        isEqualTo: true,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<FaqRecord> listViewFaqRecordList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: listViewFaqRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewFaqRecord =
                                              listViewFaqRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(
                                                20.0, 20.0, 20.0, 0.0),
                                            child: FaqTextcompWidget(
                                              key: Key(
                                                  'Key56r_${listViewIndex}_of_${listViewFaqRecordList.length}'),
                                              question:
                                                  listViewFaqRecord.question,
                                              answer: listViewFaqRecord.answer,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 30.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.footerCompModel3,
                                        updateCallback: () => setState(() {}),
                                        child: const FooterCompWidget(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 40.0, 50.0),
                      child: wrapWithModel(
                        model: _model.whatsapStickyCompModel3,
                        updateCallback: () => setState(() {}),
                        child: const WhatsapStickyCompWidget(),
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
