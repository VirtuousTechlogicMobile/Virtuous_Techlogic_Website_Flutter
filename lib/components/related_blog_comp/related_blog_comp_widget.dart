import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/backend.dart';
import '/components/blog_comp/blog_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        wrapWithModel(
          model: _model.commonRichTextCompModel,
          updateCallback: () => setState(() {}),
          child: const CommonRichTextCompWidget(
            richTextOne: 'Related  ',
            richTextTwo: 'Blogs',
            texts:
                'We consider ourselves lucky to work on many innovative concepts with amazing companies. We absolutely love solving problems and transforming ideas into reality.',
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                  children: List.generate(columnBlogDetailsRecordList.length,
                      (columnIndex) {
                    final columnBlogDetailsRecord =
                        columnBlogDetailsRecordList[columnIndex];
                    return SizedBox(
                      width: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 400.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 500.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 1500.0;
                        } else {
                          return 1500.0;
                        }
                      }(),
                      child: BlogCompWidget(
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
                          final String blogtitle =
                              Uri.encodeComponent(columnBlogDetailsRecord.title)
                                  .replaceAll('%20', '+');
                          await launchURL('individualBlogPage/$blogtitle');
                          FFAppState().selectedTitle = valueOrDefault<String>(
                            columnBlogDetailsRecord.title,
                            'Title',
                          );
                        },
                      ),
                    );
                  }).divide(const SizedBox(height: 20.0)),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
