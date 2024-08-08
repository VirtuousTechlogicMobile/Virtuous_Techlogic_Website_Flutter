import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/backend/backend.dart';
import '/components/case_study_image_comp/case_study_image_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'case_study_comp_model.dart';

export 'case_study_comp_model.dart';

class CaseStudyCompWidget extends StatefulWidget {
  const CaseStudyCompWidget({super.key});

  @override
  State<CaseStudyCompWidget> createState() => _CaseStudyCompWidgetState();
}

class _CaseStudyCompWidgetState extends State<CaseStudyCompWidget>
    with TickerProviderStateMixin {
  late CaseStudyCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaseStudyCompModel());

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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
          child: wrapWithModel(
            model: _model.commonRichTextCompModel,
            updateCallback: () => setState(() {}),
            child: const CommonRichTextCompWidget(
              richTextOne: 'Explore our ',
              richTextTwo: 'Case Studies',
              texts:
                  'We consider ourselves lucky to work on many innovative concepts with amazing companies. We absolutely love solving problems and transforming ideas into reality.',
            ),
          ).animateOnPageLoad(
              animationsMap['commonRichTextCompOnPageLoadAnimation']!),
        ),
        StreamBuilder<List<CaseStudiesRecord>>(
          stream: queryCaseStudiesRecord(
            queryBuilder: (caseStudiesRecord) => caseStudiesRecord.where(
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
            List<CaseStudiesRecord> wrapCaseStudiesRecordList = snapshot.data!;

            return Wrap(
              spacing: 20.0,
              runSpacing: 30.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children:
                  List.generate(wrapCaseStudiesRecordList.length, (wrapIndex) {
                final wrapCaseStudiesRecord =
                    wrapCaseStudiesRecordList[wrapIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('CASE_STUDY_Container_5tjoamwo_ON_TAP');

                    context.pushNamed(
                      'individualCaseStudy',
                      queryParameters: {
                        'ref': serializeParam(
                          wrapCaseStudiesRecord,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'ref': wrapCaseStudiesRecord,
                      },
                    );
                  },
                  child: CaseStudyImageCompWidget(
                    key: Key(
                        'Key5tj_${wrapIndex}_of_${wrapCaseStudiesRecordList.length}'),
                    imagepath: wrapCaseStudiesRecord.image,
                    title: wrapCaseStudiesRecord.title,
                    technology: wrapCaseStudiesRecord.language,
                  ),
                );
              }),
            );
          },
        ),
      ],
    );
  }
}
