import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/components/share_blog/share_blog_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'individual_blog_comp_model.dart';

export 'individual_blog_comp_model.dart';

class IndividualBlogCompWidget extends StatefulWidget {
  const IndividualBlogCompWidget({
    super.key,
    required this.individualBlogImage,
    required this.individualBlogTitle,
    required this.individualBlogDate,
    required this.individualBlogDescription,
    this.individualeditdescription,
  });

  final String? individualBlogImage;
  final String? individualBlogTitle;
  final String? individualBlogDate;
  final String? individualBlogDescription;
  final String? individualeditdescription;

  @override
  State<IndividualBlogCompWidget> createState() =>
      _IndividualBlogCompWidgetState();
}

class _IndividualBlogCompWidgetState extends State<IndividualBlogCompWidget> {
  late IndividualBlogCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndividualBlogCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(60, 0, 60, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 20, 0, 30),
                          child: custom_widgets.BredCrumbsUrl(
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            webName: 'Virtuous Techlogic',
                            pageName: 'Blog',
                            title: valueOrDefault<String>(
                              widget.individualBlogTitle,
                              'blog Title',
                            ),
                            bredcrumbsIcon: '/',
                            webColor: FlutterFlowTheme.of(context).primary,
                            pageColor: FlutterFlowTheme.of(context).primary,
                            titleColor: FlutterFlowTheme.of(context).black,
                            bredcrumbColor:
                                FlutterFlowTheme.of(context).primaryText,
                            webOnPressEvent: () async {
                              logFirebaseEvent(
                                  'INDIVIDUAL_BLOG_Container_jwp4degf_CALLB');

                              context.pushNamed('homePage');
                            },
                            pageOnPressEvent: () async {
                              logFirebaseEvent(
                                  'INDIVIDUAL_BLOG_Container_jwp4degf_CALLB');

                              context.pushNamed('moreBlog');
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Builder(
                          builder: (context) => InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INDIVIDUAL_BLOG_Container_jiyz0eg2_ON_TA');
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0, 0)
                                        .resolve(Directionality.of(context)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: ShareBlogWidget(
                                        blogTitle: widget.individualBlogTitle!,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.share,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].addToEnd(const SizedBox(width: 15)),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: SelectionArea(
                        child: Text(
                      valueOrDefault<String>(
                        widget.individualBlogTitle,
                        'BlogTitle',
                      ),
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                    )),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return const CircularProgressIndicator();
                            }
                          },
                          valueOrDefault<String>(
                            widget.individualBlogImage,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/vhvw84cmjyb3/logo.webp',
                          ),
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 328.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 714.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 1200.0;
                            } else {
                              return 1200.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 240.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 520.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 520.0;
                            } else {
                              return 520.0;
                            }
                          }(),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.individualBlogDate,
                      'BlogDate',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: FlutterFlowTheme.of(context).datecolor,
                          letterSpacing: 0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).labelLargeFamily),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: custom_widgets.DisplayQuillToHtml(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      defaultJsonData: valueOrDefault<String>(
                        widget.individualeditdescription,
                        'virtuous',
                      ),
                      isMaxCharacterAllowOrNot: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                    child: custom_widgets.BredCrumbsUrl(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      webName: 'Virtuous Techlogic',
                      pageName: 'Blog',
                      title: valueOrDefault<String>(
                        widget.individualBlogTitle,
                        'blog Title',
                      ),
                      bredcrumbsIcon: '/',
                      webColor: FlutterFlowTheme.of(context).primary,
                      pageColor: FlutterFlowTheme.of(context).primary,
                      titleColor: FlutterFlowTheme.of(context).black,
                      bredcrumbColor: FlutterFlowTheme.of(context).primaryText,
                      webOnPressEvent: () async {
                        logFirebaseEvent(
                            'INDIVIDUAL_BLOG_Container_5bg3059l_CALLB');

                        context.pushNamed('homePage');
                      },
                      pageOnPressEvent: () async {
                        logFirebaseEvent(
                            'INDIVIDUAL_BLOG_Container_5bg3059l_CALLB');

                        context.pushNamed('moreBlog');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                    child: SelectionArea(
                        child: AutoSizeText(
                      valueOrDefault<String>(
                        widget.individualBlogTitle,
                        'BlogTitle',
                      ),
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                    )),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        valueOrDefault<String>(
                          widget.individualBlogImage,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/vhvw84cmjyb3/logo.webp',
                        ),
                        width: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 328.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 714.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 1200.0;
                          } else {
                            return 1200.0;
                          }
                        }(),
                        height: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 240.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 520.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 520.0;
                          } else {
                            return 520.0;
                          }
                        }(),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.individualBlogDate,
                          'BlogDate',
                        ),
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: FlutterFlowTheme.of(context).datecolor,
                              letterSpacing: 0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .labelLargeFamily),
                            ),
                      ),
                      Builder(
                        builder: (context) => Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'INDIVIDUAL_BLOG_Container_6kauzpme_ON_TA');
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0, 0)
                                        .resolve(Directionality.of(context)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: ShareBlogWidget(
                                        blogTitle: widget.individualBlogTitle!,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                              alignment: const AlignmentDirectional(0, 0),
                              child: Icon(
                                Icons.share,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: custom_widgets.DisplayQuillToHtml(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      defaultJsonData: valueOrDefault<String>(
                        widget.individualeditdescription,
                        'virtuous',
                      ),
                      isMaxCharacterAllowOrNot: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
