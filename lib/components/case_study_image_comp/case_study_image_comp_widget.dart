import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'case_study_image_comp_model.dart';

export 'case_study_image_comp_model.dart';

class CaseStudyImageCompWidget extends StatefulWidget {
  const CaseStudyImageCompWidget({
    super.key,
    required this.imagepath,
    required this.title,
    required this.technology,
  });

  final String? imagepath;
  final String? title;
  final List<String>? technology;

  @override
  State<CaseStudyImageCompWidget> createState() =>
      _CaseStudyImageCompWidgetState();
}

class _CaseStudyImageCompWidgetState extends State<CaseStudyImageCompWidget>
    with TickerProviderStateMixin {
  late CaseStudyImageCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaseStudyImageCompModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.05, 1.05),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
      }),
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 328.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 520.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 520.0;
          } else {
            return 520.0;
          }
        }(),
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            bottom: 48,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: CachedNetworkImage(
                  fadeInDuration: const Duration(milliseconds: 100),
                  fadeOutDuration: const Duration(milliseconds: 100),
                  imageUrl: widget.imagepath!,
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
                  height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 280.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 480.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 480.0;
                    } else {
                      return 480.0;
                    }
                  }(),
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Text(
                  widget.title!,
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineSmallFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineSmallFamily,
                        ),
                      ),
                ),
              ),
              Builder(
                builder: (context) {
                  final technology = widget.technology!.toList();

                  return Wrap(
                    spacing: 8.0,
                    runSpacing: 5.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children:
                        List.generate(technology.length, (technologyIndex) {
                      final technologyItem = technology[technologyIndex];
                      return Text(
                        technologyItem,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelLargeFamily,
                              ),
                            ),
                      );
                    }),
                  );
                },
              ),
            ].divide(const SizedBox(height: 10.0)),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
