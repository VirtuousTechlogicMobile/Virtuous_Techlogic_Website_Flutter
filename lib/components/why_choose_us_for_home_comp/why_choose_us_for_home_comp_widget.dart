import 'package:flutter/material.dart';

import '/backend/backend.dart';
import '/components/about_experience_comp/about_experience_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/company_comp/company_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'why_choose_us_for_home_comp_model.dart';

export 'why_choose_us_for_home_comp_model.dart';

class WhyChooseUsForHomeCompWidget extends StatefulWidget {
  const WhyChooseUsForHomeCompWidget({super.key});

  @override
  State<WhyChooseUsForHomeCompWidget> createState() =>
      _WhyChooseUsForHomeCompWidgetState();
}

class _WhyChooseUsForHomeCompWidgetState
    extends State<WhyChooseUsForHomeCompWidget> {
  late WhyChooseUsForHomeCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhyChooseUsForHomeCompModel());

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
      mainAxisSize: MainAxisSize.min,
      children: [
        wrapWithModel(
          model: _model.commonRichTextCompModel,
          updateCallback: () => setState(() {}),
          child: const CommonRichTextCompWidget(
            richTextOne: 'Why ',
            richTextTwo: 'Choose Us?',
            texts:
                'Flutterflow Development Company, an Extension of Your Technical Team',
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: StreamBuilder<List<WhyChooseUsRecord>>(
            stream: queryWhyChooseUsRecord(
              queryBuilder: (whyChooseUsRecord) => whyChooseUsRecord.where(
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
              List<WhyChooseUsRecord> wrapWhyChooseUsRecordList =
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
                children: List.generate(wrapWhyChooseUsRecordList.length,
                    (wrapIndex) {
                  final wrapWhyChooseUsRecord =
                      wrapWhyChooseUsRecordList[wrapIndex];
                  return CompanyCompWidget(
                    key: Key(
                        'Keyjws_${wrapIndex}_of_${wrapWhyChooseUsRecordList.length}'),
                    image: wrapWhyChooseUsRecord.image,
                    text: wrapWhyChooseUsRecord.ratingText,
                    rating: wrapWhyChooseUsRecord.ratings,
                  );
                }),
              );
            },
          ),
        ),
        wrapWithModel(
          model: _model.aboutExperienceCompModel,
          updateCallback: () => setState(() {}),
          child: const AboutExperienceCompWidget(
            projects: 200,
            satisfiedClients: 50,
            expertise: 10,
          ),
        ),
      ].divide(const SizedBox(height: 25.0)),
    );
  }
}
