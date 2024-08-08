import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'common_rich_text_comp_model.dart';

export 'common_rich_text_comp_model.dart';

class CommonRichTextCompWidget extends StatefulWidget {
  const CommonRichTextCompWidget({
    super.key,
    required this.richTextOne,
    required this.richTextTwo,
    required this.texts,
    this.showShadow = true,
  });

  final String? richTextOne;
  final String? richTextTwo;
  final String? texts;
  final bool showShadow;

  @override
  State<CommonRichTextCompWidget> createState() =>
      _CommonRichTextCompWidgetState();
}

class _CommonRichTextCompWidgetState extends State<CommonRichTextCompWidget> {
  late CommonRichTextCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonRichTextCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      if (responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ))
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectionArea(
                      child: Text(
                    valueOrDefault<String>(
                      widget.richTextOne,
                      'Virtuous',
                    ),
                    style: FlutterFlowTheme.of(context).displayMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displayMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).displayMediumFamily),
                        ),
                  )),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    SelectionArea(
                        child: Text(
                      valueOrDefault<String>(
                        widget.richTextTwo,
                        'Techlogic',
                      ),
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displayMediumFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .displayMediumFamily),
                              ),
                    )),
                ].divide(const SizedBox(width: 5.0)),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      20.0, 20.0, 20.0, 0.0),
                  child: SelectionArea(
                      child: SizedBox(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 328.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 590.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 590.0;
                      } else {
                        return 590.0;
                      }
                    }(),
                    child: Text(
                      widget.texts!,
                      textAlign: TextAlign.center,
                      maxLines: 6,
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily),
                          ),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      Stack(
        children: [
          if (widget.showShadow &&
              responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFD2E8F6),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 200,
                          color: Color(0xFFD2E5F2),
                          offset: Offset(
                            0.0,
                            0,
                          ),
                          spreadRadius: 150,
                        )
                      ],
                      borderRadius: BorderRadius.circular(500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8E5CB),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 200,
                          color: Color(0xFFF4E3C8),
                          offset: Offset(
                            15,
                            0,
                          ),
                          spreadRadius: 150,
                        )
                      ],
                      borderRadius: BorderRadius.circular(500),
                    ),
                  ),
                ),
              ],
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectionArea(
                    child: Text(
                  valueOrDefault<String>(
                    widget.richTextOne,
                    'Virtuous',
                  ),
                  style: FlutterFlowTheme.of(context).displayMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).displayMediumFamily,
                        fontSize: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 30.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 48.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 48.0;
                          } else {
                            return 48.0;
                          }
                        }(),
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).displayMediumFamily),
                      ),
                )),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: SelectionArea(
                      child: Text(
                    valueOrDefault<String>(
                      widget.richTextTwo,
                      'Techlogic',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displayMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displayMediumFamily,
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 30.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 48.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 48.0;
                            } else {
                              return 48.0;
                            }
                          }(),
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).displayMediumFamily),
                        ),
                  )),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        20.0, 20.0, 20.0, 0.0),
                    child: SelectionArea(
                        child: SizedBox(
                      width: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 328.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 590.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 590.0;
                        } else {
                          return 590.0;
                        }
                      }(),
                      child: Text(
                        widget.texts!,
                        textAlign: TextAlign.center,
                        maxLines: 6,
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .labelLargeFamily),
                            ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
        ],
      )
    ]);
  }
}
