import 'package:flutter/material.dart';

import '/backend/backend.dart';
import '/button_component/get_in_touch_button_comp/get_in_touch_button_comp_widget.dart';
import '/components/blog_comp/blog_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_our_blogs_comp_model.dart';

export 'explore_our_blogs_comp_model.dart';

class ExploreOurBlogsCompWidget extends StatefulWidget {
  const ExploreOurBlogsCompWidget({super.key});

  @override
  State<ExploreOurBlogsCompWidget> createState() =>
      _ExploreOurBlogsCompWidgetState();
}

class _ExploreOurBlogsCompWidgetState extends State<ExploreOurBlogsCompWidget> {
  late ExploreOurBlogsCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreOurBlogsCompModel());

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          wrapWithModel(
            model: _model.commonRichTextCompModel,
            updateCallback: () => setState(() {}),
            child: CommonRichTextCompWidget(
              richTextOne: 'Explore ',
              richTextTwo: 'Our Blogs',
              texts: 'Blogs & posts by our Team',
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: StreamBuilder<List<BlogDetailsRecord>>(
              stream: queryBlogDetailsRecord(
                queryBuilder: (blogDetailsRecord) => blogDetailsRecord.where(
                  'status',
                  isEqualTo: true,
                ),
                limit: 2,
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
                if (columnBlogDetailsRecordList.isEmpty) {
                  return Image.asset(
                    'assets/images/Questions-pana_1.png',
                  );
                }

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(columnBlogDetailsRecordList.length,
                        (columnIndex) {
                      final columnBlogDetailsRecord =
                          columnBlogDetailsRecordList[columnIndex];
                      return BlogCompWidget(
                        key: Key(
                            'Keym5k_${columnIndex}_of_${columnBlogDetailsRecordList.length}'),
                        blogimage: valueOrDefault<String>(
                          columnBlogDetailsRecord.image,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/ojp553es6376/virtuous-logo-only.png',
                        ),
                        blogTitleText: valueOrDefault<String>(
                          columnBlogDetailsRecord.title,
                          'Title',
                        ),
                        blogDescription: valueOrDefault<String>(
                          columnBlogDetailsRecord.description,
                          'description',
                        ),
                        blogDate: valueOrDefault<String>(
                          columnBlogDetailsRecord.name,
                          'name',
                        ),
                        blogTag: columnBlogDetailsRecord.blogTags,
                        readmore: () async {
                          /* final String ref =
                              "${Uri.encodeComponent(columnBlogDetailsRecord.reference.id)}";*/
                          final String blotitle =
                              "${Uri.encodeComponent(columnBlogDetailsRecord.title)}";

                          // print("reference : ${ref}");

                          print(("Blog Title : ${blotitle}"));

                          GoRouter.of(context).go(
                            '/individualBlogPage/${blotitle}',
                          );
                        },
                      );
                    }).divide(SizedBox(height: 20.0)),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: wrapWithModel(
              model: _model.getInTouchButtonCompModel,
              updateCallback: () => setState(() {}),
              child: GetInTouchButtonCompWidget(
                buttonName: 'More Blogs',
                showIcon: false,
                buttonAction: () async {
                  logFirebaseEvent('EXPLORE_OUR_BLOGS_Container_2t5fn62x_CAL');

                  context.pushNamed(
                    'moreBlog',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
              ),
            ),
          ),
        ].divide(SizedBox(height: 30.0)),
      ),
    );
  }
}
