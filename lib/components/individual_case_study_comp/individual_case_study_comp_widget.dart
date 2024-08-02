import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'individual_case_study_comp_model.dart';
export 'individual_case_study_comp_model.dart';

class IndividualCaseStudyCompWidget extends StatefulWidget {
  const IndividualCaseStudyCompWidget({
    super.key,
    required this.title,
    required this.introduction,
    required this.description,
    required this.features,
    required this.mainImage,
    required this.descriptionImage,
    required this.featuresImage,
    this.editDescription,
  });

  final String? title;
  final String? introduction;
  final String? description;
  final List<String>? features;
  final String? mainImage;
  final String? descriptionImage;
  final String? featuresImage;
  final String? editDescription;

  @override
  State<IndividualCaseStudyCompWidget> createState() => _IndividualCaseStudyCompWidgetState();
}

class _IndividualCaseStudyCompWidgetState extends State<IndividualCaseStudyCompWidget> {
  late IndividualCaseStudyCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndividualCaseStudyCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 30.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget!.title!,
                            style: FlutterFlowTheme.of(context).displayMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context).displayMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).displayMediumFamily),
                                ),
                          ),
                          Text(
                            widget!.introduction!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                  color: Color(0xFF676767),
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                ),
                          ),
                        ].divide(SizedBox(height: 5.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20.0, 1.0, 0.0, 1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 100),
                          fadeOutDuration: Duration(milliseconds: 100),
                          imageUrl: widget!.mainImage!,
                          width: 520.0,
                          height: 400.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20.0, 1.0, 0.0, 1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 100),
                          fadeOutDuration: Duration(milliseconds: 100),
                          imageUrl: widget!.descriptionImage!,
                          width: 520.0,
                          height: 400.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).text16Colo2,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                ),
                          ),
                          custom_widgets.DisplayQuillToHtml(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            defaultJsonData: widget!.editDescription!,
                            isMaxCharacterAllowOrNot: false,
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 30.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Feature',
                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).text16Colo2,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final listofFeatures = widget!.features!.toList();

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(listofFeatures.length, (listofFeaturesIndex) {
                                    final listofFeaturesItem = listofFeatures[listofFeaturesIndex];
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.check_sharp,
                                          color: FlutterFlowTheme.of(context).primaryText,
                                          size: 24.0,
                                        ),
                                        Text(
                                          listofFeaturesItem,
                                          style: FlutterFlowTheme.of(context).labelLarge.override(
                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 5.0)),
                                    );
                                  }).divide(SizedBox(height: 4.0)),
                                );
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 5.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20.0, 1.0, 0.0, 1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 100),
                          fadeOutDuration: Duration(milliseconds: 100),
                          imageUrl: widget!.featuresImage!,
                          width: 520.0,
                          height: 400.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget!.title!,
                          style: FlutterFlowTheme.of(context).displaySmall.override(
                                fontFamily: 'Open Sans',
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey('Open Sans'),
                              ),
                        ),
                        Text(
                          widget!.introduction!,
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).labelLarge.override(
                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                color: Color(0xFF676767),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                              ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          wrapWithModel(
                            model: _model.getInTouchButtonCompModel,
                            updateCallback: () => setState(() {}),
                            child: GetInTouchButtonCompWidget(
                              buttonName: 'View Live App',
                              showIcon: false,
                              buttonAction: () async {},
                            ),
                          ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            fadeInDuration: Duration(milliseconds: 200),
                            fadeOutDuration: Duration(milliseconds: 200),
                            imageUrl: valueOrDefault<String>(
                              widget!.mainImage,
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/0cxs3r0venxs/vtlogo.png',
                            ),
                            width: () {
                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                return 328.0;
                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                return 714.0;
                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                return 714.0;
                              } else {
                                return 714.0;
                              }
                            }(),
                            height: () {
                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                return 220.0;
                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                return 480.0;
                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                return 480.0;
                              } else {
                                return 480.0;
                              }
                            }(),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ],
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Container(
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                            fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                            color: Color(0xFF676767),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: custom_widgets.DisplayQuillToHtml(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        defaultJsonData: widget!.editDescription!,
                        isMaxCharacterAllowOrNot: false,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 200),
                          fadeOutDuration: Duration(milliseconds: 200),
                          imageUrl: valueOrDefault<String>(
                            widget!.descriptionImage,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/0cxs3r0venxs/vtlogo.png',
                          ),
                          width: () {
                            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                              return 328.0;
                            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                              return 714.0;
                            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                              return 714.0;
                            } else {
                              return 714.0;
                            }
                          }(),
                          height: () {
                            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                              return 220.0;
                            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                              return 480.0;
                            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                              return 480.0;
                            } else {
                              return 480.0;
                            }
                          }(),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Container(
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Feature',
                            style: FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                  color: Color(0xFF676767),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                ),
                          ),
                          Builder(
                            builder: (context) {
                              final listogFeatures = widget!.features!.toList();

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listogFeatures.length,
                                itemBuilder: (context, listogFeaturesIndex) {
                                  final listogFeaturesItem = listogFeatures[listogFeaturesIndex];
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.check_sharp,
                                        color: FlutterFlowTheme.of(context).primaryText,
                                        size: 24.0,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            listogFeaturesItem,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                  color: Color(0xFF676767),
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  widget!.featuresImage,
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/0cxs3r0venxs/vtlogo.png',
                                ),
                                width: () {
                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                    return 328.0;
                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                    return 714.0;
                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                    return 714.0;
                                  } else {
                                    return 714.0;
                                  }
                                }(),
                                height: () {
                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                    return 220.0;
                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                    return 480.0;
                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                    return 480.0;
                                  } else {
                                    return 480.0;
                                  }
                                }(),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ].divide(SizedBox(height: 15.0)),
      ),
    );
  }
}
