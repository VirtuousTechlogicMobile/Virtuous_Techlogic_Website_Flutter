import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/button_component/view_live_app_button_comp/view_live_app_button_comp_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'our_product_detail_comp_model.dart';

export 'our_product_detail_comp_model.dart';

class OurProductDetailCompWidget extends StatefulWidget {
  const OurProductDetailCompWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.features,
    this.editDescription,
  });

  final String? imagePath;
  final String? title;
  final String? description;
  final List<String>? features;
  final String? editDescription;

  @override
  State<OurProductDetailCompWidget> createState() =>
      _OurProductDetailCompWidgetState();
}

class _OurProductDetailCompWidgetState
    extends State<OurProductDetailCompWidget> {
  late OurProductDetailCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurProductDetailCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 5.0, 60.0, 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: CachedNetworkImage(
                fadeInDuration: const Duration(milliseconds: 5),
                fadeOutDuration: const Duration(milliseconds: 5),
                imageUrl: widget.imagePath!,
                width: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 328.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 714.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 1199.0;
                  } else {
                    return 1199.0;
                  }
                }(),
                height: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 200.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 200.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 472.0;
                  } else {
                    return 472.0;
                  }
                }(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SelectionArea(
              child: Text(
            widget.title!,
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).displaySmallFamily),
                ),
          )),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                wrapWithModel(
                  model: _model.viewLiveAppButtonCompModel1,
                  updateCallback: () => setState(() {}),
                  child: const ViewLiveAppButtonCompWidget(
                    viewLiveApp: 'View Live App',
                  ),
                ),
                wrapWithModel(
                  model: _model.getInTouchButtonCompModel1,
                  updateCallback: () => setState(() {}),
                  child: GetInTouchButtonCompWidget(
                    buttonName: 'Contact for Pricing',
                    buttonAction: () async {},
                  ),
                ),
              ].divide(const SizedBox(width: 20.0)),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.viewLiveAppButtonCompModel2,
                  updateCallback: () => setState(() {}),
                  child: const ViewLiveAppButtonCompWidget(
                    viewLiveApp: 'View Live App',
                  ),
                ),
                wrapWithModel(
                  model: _model.getInTouchButtonCompModel2,
                  updateCallback: () => setState(() {}),
                  child: GetInTouchButtonCompWidget(
                    buttonName: 'Contact for Pricing',
                    buttonAction: () async {},
                  ),
                ),
              ].divide(const SizedBox(height: 20.0)),
            ),
          Text(
            'Description',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                  color: FlutterFlowTheme.of(context).text16Colo2,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineSmallFamily),
                ),
          ),
          custom_widgets.DisplayQuillToHtml(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 0.08,
            defaultJsonData: widget.editDescription!,
            isMaxCharacterAllowOrNot: false,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              'Features',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineSmallFamily,
                    color: const Color(0xFF676767),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineSmallFamily),
                  ),
            ),
          ),
          Builder(
            builder: (context) {
              final featuresList = widget.features!.toList();

              return Column(
                mainAxisSize: MainAxisSize.max,
                children:
                    List.generate(featuresList.length, (featuresListIndex) {
                  final featuresListItem = featuresList[featuresListIndex];
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.done,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: SelectionArea(
                                  child: Text(
                                featuresListItem,
                                maxLines: 20,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily),
                                      lineHeight: 2.0,
                                    ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),
        ].divide(const SizedBox(height: 10.0)),
      ),
    );
  }
}
