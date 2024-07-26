import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/explore_our_product_comp/explore_our_product_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'our_product_component_comp_model.dart';
export 'our_product_component_comp_model.dart';

class OurProductComponentCompWidget extends StatefulWidget {
  const OurProductComponentCompWidget({
    super.key,
    this.editDescription,
    this.number,
  });

  final String? editDescription;
  final int? number;

  @override
  State<OurProductComponentCompWidget> createState() =>
      _OurProductComponentCompWidgetState();
}

class _OurProductComponentCompWidgetState
    extends State<OurProductComponentCompWidget> with TickerProviderStateMixin {
  late OurProductComponentCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurProductComponentCompModel());

    animationsMap.addAll({
      'commonRichTextCompOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.commonRichTextCompModel,
                updateCallback: () => setState(() {}),
                child: CommonRichTextCompWidget(
                  richTextOne: 'Explore Our ',
                  richTextTwo: 'Own Area',
                  texts:
                      'From retail to healthcare, our white-label solutions are tailored to fit your industry needs. Take your business to the next level with ease!',
                ),
              ).animateOnPageLoad(
                  animationsMap['commonRichTextCompOnPageLoadAnimation']!),
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
                  List<BuildProductRecord> columnBuildProductRecordList =
                      snapshot.data!;

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnBuildProductRecordList.length,
                        (columnIndex) {
                      final columnBuildProductRecord =
                          columnBuildProductRecordList[columnIndex];
                      return Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'OUR_PRODUCT_COMPONENT_Container_u9ntarda');

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
                                'Keyu9n_${columnIndex}_of_${columnBuildProductRecordList.length}'),
                            productTitle: columnBuildProductRecord.title,
                            productDescription:
                                columnBuildProductRecord.description,
                            imagePath: columnBuildProductRecord.image,
                            isLeftsideText: columnIndex % 2 == 0 ? false : true,
                            editDescription:
                                columnBuildProductRecord.editDescription,
                            viewmore: () async {
                              logFirebaseEvent(
                                  'OUR_PRODUCT_COMPONENT_Container_u9ntarda');

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
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
