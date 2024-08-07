import 'package:flutter/material.dart';

import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/language_with_details_comp/language_with_details_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_our_offering_comp_model.dart';

export 'explore_our_offering_comp_model.dart';

class ExploreOurOfferingCompWidget extends StatefulWidget {
  const ExploreOurOfferingCompWidget({super.key});

  @override
  State<ExploreOurOfferingCompWidget> createState() =>
      _ExploreOurOfferingCompWidgetState();
}

class _ExploreOurOfferingCompWidgetState
    extends State<ExploreOurOfferingCompWidget> {
  late ExploreOurOfferingCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreOurOfferingCompModel());

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: wrapWithModel(
              model: _model.commonRichTextCompModel,
              updateCallback: () => setState(() {}),
              child: const CommonRichTextCompWidget(
                richTextOne: 'Explore Our ',
                richTextTwo: 'Expertise',
                texts: 'Fields where we are Best.',
                showShadow: false,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 40.0, 5.0, 10.0),
            child: StreamBuilder<List<ExploreOfferingRecord>>(
              stream: queryExploreOfferingRecord(
                queryBuilder: (exploreOfferingRecord) =>
                    exploreOfferingRecord.orderBy('created_at'),
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
                List<ExploreOfferingRecord> wrapExploreOfferingRecordList =
                    snapshot.data!;

                return Wrap(
                  spacing: 30.0,
                  runSpacing: 25.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: List.generate(wrapExploreOfferingRecordList.length,
                      (wrapIndex) {
                    final wrapExploreOfferingRecord =
                        wrapExploreOfferingRecordList[wrapIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('dedicatedServicePage');
                      },
                      child: LanguageWithDetailsCompWidget(
                        key: Key(
                            'Keytei_${wrapIndex}_of_${wrapExploreOfferingRecordList.length}'),
                        languageWithDetailsImage:
                            wrapExploreOfferingRecord.image,
                        languageWithDetailsHeading:
                            wrapExploreOfferingRecord.title,
                        languageWithDetailsShortDescription:
                            wrapExploreOfferingRecord.description,
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
