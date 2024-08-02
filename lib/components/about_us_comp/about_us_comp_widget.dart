import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '/backend/backend.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_us_comp_model.dart';

export 'about_us_comp_model.dart';

class AboutUsCompWidget extends StatefulWidget {
  const AboutUsCompWidget({
    super.key,
    required this.text,
    required this.richText1,
    required this.richText2,
    required this.richText3,
    required this.text2,
  });

  final String? text;
  final String? richText1;
  final String? richText2;
  final String? richText3;
  final String? text2;

  @override
  State<AboutUsCompWidget> createState() => _AboutUsCompWidgetState();
}

class _AboutUsCompWidgetState extends State<AboutUsCompWidget> {
  late AboutUsCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutUsCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AboutUsImagesRecord>>(
      stream: queryAboutUsImagesRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<AboutUsImagesRecord> columnAboutUsImagesRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final columnAboutUsImagesRecord = columnAboutUsImagesRecordList.isNotEmpty ? columnAboutUsImagesRecordList.first : null;

        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.1,
                child: custom_widgets.RichText(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  text1: widget.richText1 ?? '',
                  text2: widget.richText2 ?? '',
                  text3: widget.richText3 ?? '',
                  color1: FlutterFlowTheme.of(context).primaryText,
                  color2: FlutterFlowTheme.of(context).primary,
                  color3: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: SelectionArea(
                      child: Text(
                    widget.text ?? 'Text',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                        ),
                  )),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: SelectionArea(
                      child: Text(
                    widget.text2!,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                        ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 30.0, 5.0, 5.0),
                child: MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 1;
                      } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                        return 1;
                      } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                        return 2;
                      } else {
                        return 2;
                      }
                    }(),
                  ),
                  crossAxisSpacing: 28.0,
                  mainAxisSpacing: 30.0,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return [
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: CachedNetworkImage(
                              fadeInDuration: Duration(milliseconds: 100),
                              fadeOutDuration: Duration(milliseconds: 100),
                              imageUrl: columnAboutUsImagesRecord!.squareImages,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: CachedNetworkImage(
                              fadeInDuration: Duration(milliseconds: 100),
                              fadeOutDuration: Duration(milliseconds: 100),
                              imageUrl: columnAboutUsImagesRecord!.ractangleImage1,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: CachedNetworkImage(
                              fadeInDuration: Duration(milliseconds: 100),
                              fadeOutDuration: Duration(milliseconds: 100),
                              imageUrl: columnAboutUsImagesRecord!.ractangleImage2,
                              fit: BoxFit.cover,
                            ),
                          ),
                    ][index]();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
