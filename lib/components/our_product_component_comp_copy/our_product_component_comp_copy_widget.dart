import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/explore_our_product_comp/explore_our_product_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_product_component_comp_copy_model.dart';

export 'our_product_component_comp_copy_model.dart';

class OurProductComponentCompCopyWidget extends StatefulWidget {
  const OurProductComponentCompCopyWidget({
    super.key,
    this.editDescription,
    this.number,
  });

  final String? editDescription;
  final int? number;

  @override
  State<OurProductComponentCompCopyWidget> createState() =>
      _OurProductComponentCompCopyWidgetState();
}

class _OurProductComponentCompCopyWidgetState
    extends State<OurProductComponentCompCopyWidget> {
  late OurProductComponentCompCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurProductComponentCompCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
        child: SingleChildScrollView(
          controller: _model.columnController,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.commonRichTextCompModel,
                updateCallback: () => setState(() {}),
                child: const CommonRichTextCompWidget(
                  richTextOne: 'Explore Our ',
                  richTextTwo: 'Own Area',
                  texts:
                      'From retail to healthcare, our white-label solutions are tailored to fit your industry needs. Take your business to the next level with ease!',
                ),
              ),
              StreamBuilder<List<BuildProductRecord>>(
                stream: queryBuildProductRecord(
                  queryBuilder: (buildProductRecord) => buildProductRecord
                      .where(
                        'status',
                        isEqualTo: true,
                      )
                      .orderBy('created_at', descending: true),
                  limit: 4,
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
                  List<BuildProductRecord> wrapBuildProductRecordList =
                      snapshot.data!;

                  return Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: List.generate(wrapBuildProductRecordList.length,
                        (wrapIndex) {
                      final wrapBuildProductRecord =
                          wrapBuildProductRecordList[wrapIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 0.0),
                        child: ExploreOurProductCompWidget(
                          key: Key(
                              'Keyqjr_${wrapIndex}_of_${wrapBuildProductRecordList.length}'),
                          productTitle: wrapBuildProductRecord.title,
                          productDescription:
                              wrapBuildProductRecord.description,
                          imagePath: wrapBuildProductRecord.image,
                          isLeftsideText: wrapIndex % 2 == 0 ? false : true,
                          editDescription:
                              wrapBuildProductRecord.editDescription,
                          viewmore: () async {
                            logFirebaseEvent(
                                'OUR_PRODUCT_COMPONENT_COPY_Container_qjr');

                            context.pushNamed(
                              'IndividualProductPage',
                              queryParameters: {
                                'productRef': serializeParam(
                                  wrapBuildProductRecord,
                                  ParamType.Document,
                                ),
                                'productTitle': serializeParam(
                                  wrapBuildProductRecord.title,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'productRef': wrapBuildProductRecord,
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );

                            FFAppState().selectedTitle =
                                wrapBuildProductRecord.title;
                            setState(() {});
                          },
                        ),
                      );
                    }),
                  );
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'OUR_PRODUCT_COMPONENT_COPY_Container_pwo');
                      await _model.columnController?.animateTo(
                        0,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      width: 32.0,
                      height: 32.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          '1',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
