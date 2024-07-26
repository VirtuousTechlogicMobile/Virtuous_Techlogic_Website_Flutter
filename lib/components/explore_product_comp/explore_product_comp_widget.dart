import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/explore_our_product_comp/explore_our_product_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'explore_product_comp_model.dart';
export 'explore_product_comp_model.dart';

class ExploreProductCompWidget extends StatefulWidget {
  const ExploreProductCompWidget({super.key});

  @override
  State<ExploreProductCompWidget> createState() =>
      _ExploreProductCompWidgetState();
}

class _ExploreProductCompWidgetState extends State<ExploreProductCompWidget> {
  late ExploreProductCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreProductCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.commonRichTextCompModel,
              updateCallback: () => setState(() {}),
              child: CommonRichTextCompWidget(
                richTextOne: 'Other ',
                richTextTwo: ' Products',
                texts:
                    'We consider ourselves lucky to work on many innovative concepts with amazing companies. We absolutely love solving problems and transforming ideas into reality.',
              ),
            ),
            StreamBuilder<List<BuildProductRecord>>(
              stream: queryBuildProductRecord(
                queryBuilder: (buildProductRecord) => buildProductRecord
                    .where(
                      'title',
                      isNotEqualTo: FFAppState().selectedTitle,
                    )
                    .where(
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
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<BuildProductRecord> columnBuildProductRecordList =
                    snapshot.data!;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnBuildProductRecordList.length,
                        (columnIndex) {
                      final columnBuildProductRecord =
                          columnBuildProductRecordList[columnIndex];
                      return Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'EXPLORE_PRODUCT_Container_95fu6s8n_ON_TA');

                            context.pushNamed(
                              'IndividualProductPage',
                              queryParameters: {
                                'productRef': serializeParam(
                                  columnBuildProductRecord,
                                  ParamType.Document,
                                ),
                                'productTitle': serializeParam(
                                  columnBuildProductRecord.title,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'productRef': columnBuildProductRecord,
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );

                            FFAppState().selectedTitle =
                                columnBuildProductRecord.title;
                            setState(() {});
                          },
                          child: ExploreOurProductCompWidget(
                            key: Key(
                                'Key95f_${columnIndex}_of_${columnBuildProductRecordList.length}'),
                            productTitle: columnBuildProductRecord.title,
                            productDescription:
                                columnBuildProductRecord.description,
                            imagePath: columnBuildProductRecord.image,
                            isLeftsideText: columnIndex % 2 == 0 ? false : true,
                            editDescription:
                                columnBuildProductRecord.editDescription,
                            viewmore: () async {
                              logFirebaseEvent(
                                  'EXPLORE_PRODUCT_Container_95fu6s8n_CALLB');

                              context.pushNamed(
                                'IndividualProductPage',
                                queryParameters: {
                                  'productRef': serializeParam(
                                    columnBuildProductRecord,
                                    ParamType.Document,
                                  ),
                                  'productTitle': serializeParam(
                                    columnBuildProductRecord.title,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'productRef': columnBuildProductRecord,
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );

                              FFAppState().selectedTitle =
                                  columnBuildProductRecord.title;
                              setState(() {});
                            },
                          ),
                        ),
                      );
                    }).divide(SizedBox(height: 10.0)),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
