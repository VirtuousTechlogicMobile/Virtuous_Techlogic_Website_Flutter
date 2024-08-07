import 'package:flutter/material.dart';

import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/our_culture_imag_mobile_comp/our_culture_imag_mobile_comp_widget.dart';
import '/components/our_culture_image_comp/our_culture_image_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'our_culture_comp_model.dart';

export 'our_culture_comp_model.dart';

class OurCultureCompWidget extends StatefulWidget {
  const OurCultureCompWidget({super.key});

  @override
  State<OurCultureCompWidget> createState() => _OurCultureCompWidgetState();
}

class _OurCultureCompWidgetState extends State<OurCultureCompWidget> {
  late OurCultureCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OurCultureCompModel());

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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 21.0),
            child: wrapWithModel(
              model: _model.commonRichTextCompModel,
              updateCallback: () => setState(() {}),
              child: const CommonRichTextCompWidget(
                richTextOne: 'Life at',
                richTextTwo: 'Virtuous  Techlogic',
                texts: 'Our culture, Our traditions.',
                showShadow: false,
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  StreamBuilder<List<OurCultureRecord>>(
                    stream: queryOurCultureRecord(
                      queryBuilder: (ourCultureRecord) =>
                          ourCultureRecord.where(
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
                      List<OurCultureRecord> wrapOurCultureRecordList =
                          snapshot.data!;

                      return Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: List.generate(wrapOurCultureRecordList.length,
                            (wrapIndex) {
                          final wrapOurCultureRecord =
                              wrapOurCultureRecordList[wrapIndex];
                          return OurCultureImageCompWidget(
                            key: Key(
                                'Keyert_${wrapIndex}_of_${wrapOurCultureRecordList.length}'),
                            image: wrapOurCultureRecord.image,
                            richText1: 'Our',
                            richText2: wrapOurCultureRecord.title,
                            textforDesc: wrapOurCultureRecord.description,
                            isUpsideText: wrapIndex % 2 == 0 ? false : true,
                          );
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                  child: StreamBuilder<List<OurCultureRecord>>(
                    stream: queryOurCultureRecord(
                      queryBuilder: (ourCultureRecord) =>
                          ourCultureRecord.where(
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
                      List<OurCultureRecord> wrapOurCultureRecordList =
                          snapshot.data!;

                      return Wrap(
                        spacing: 28.0,
                        runSpacing: 28.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.vertical,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: List.generate(wrapOurCultureRecordList.length,
                            (wrapIndex) {
                          final wrapOurCultureRecord =
                              wrapOurCultureRecordList[wrapIndex];
                          return OurCultureImagMobileCompWidget(
                            key: Key(
                                'Keyu6z_${wrapIndex}_of_${wrapOurCultureRecordList.length}'),
                            image: wrapOurCultureRecord.image,
                            richText1: 'Our',
                            richText2: wrapOurCultureRecord.title,
                            textforDesc: wrapOurCultureRecord.description,
                            isUpsideText: true,
                          );
                        }),
                      );
                    },
                  ),
                ),
              ],
            ),
        ].divide(const SizedBox(height: 30.0)),
      ),
    );
  }
}
