import '/backend/backend.dart';
import '/components/blog_comp/blog_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'related_blog_comp_model.dart';
export 'related_blog_comp_model.dart';

class RelatedBlogCompWidget extends StatefulWidget {
  const RelatedBlogCompWidget({super.key});

  @override
  State<RelatedBlogCompWidget> createState() => _RelatedBlogCompWidgetState();
}

class _RelatedBlogCompWidgetState extends State<RelatedBlogCompWidget> {
  late RelatedBlogCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RelatedBlogCompModel());

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
                richTextOne: 'Related  ',
                richTextTwo: 'Blogs',
                texts:
                    'We consider ourselves lucky to work on many innovative concepts with amazing companies. We absolutely love solving problems and transforming ideas into reality.',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: StreamBuilder<List<BlogDetailsRecord>>(
                stream: queryBlogDetailsRecord(
                  queryBuilder: (blogDetailsRecord) => blogDetailsRecord
                      .where(
                        'status',
                        isEqualTo: true,
                      )
                      .where(
                        'title',
                        isNotEqualTo: FFAppState().selectedTitle,
                      ),
                  limit: 3,
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
                  List<BlogDetailsRecord> columnBlogDetailsRecordList =
                      snapshot.data!;

                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          columnBlogDetailsRecordList.length, (columnIndex) {
                        final columnBlogDetailsRecord =
                            columnBlogDetailsRecordList[columnIndex];
                        return BlogCompWidget(
                          key: Key(
                              'Keyu8u_${columnIndex}_of_${columnBlogDetailsRecordList.length}'),
                          blogimage: valueOrDefault<String>(
                            columnBlogDetailsRecord.image,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ojp553es6376/virtuous-logo-only.png',
                          ),
                          blogTitleText: valueOrDefault<String>(
                            columnBlogDetailsRecord.title,
                            'releted Blog Title',
                          ),
                          blogDescription: valueOrDefault<String>(
                            columnBlogDetailsRecord.description,
                            'releted Blog description',
                          ),
                          blogDate: valueOrDefault<String>(
                            columnBlogDetailsRecord.name,
                            'Releted blog date',
                          ),
                          blogTag: columnBlogDetailsRecord.blogTags,
                          readmore: () async {
                            logFirebaseEvent(
                                'RELATED_BLOG_Container_u8u168lb_CALLBACK');

                            context.pushNamed(
                              'individualBlogPage',
                              queryParameters: {
                                'individualBlogRefpage': serializeParam(
                                  columnBlogDetailsRecord.reference,
                                  ParamType.DocumentReference,
                                ),
                                'blogTitle': serializeParam(
                                  columnBlogDetailsRecord.title,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );

                            FFAppState().selectedTitle =
                                columnBlogDetailsRecord.title;
                            setState(() {});
                          },
                        );
                      }).divide(SizedBox(height: 20.0)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
