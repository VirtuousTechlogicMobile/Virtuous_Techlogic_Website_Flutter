import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

import '/backend/backend.dart';
import '/components/blog_comp/blog_comp_widget.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'more_blog_comp_model.dart';

export 'more_blog_comp_model.dart';

class MoreBlogCompWidget extends StatefulWidget {
  const MoreBlogCompWidget({
    super.key,
    this.blogTag,
    this.isSelected,
  });

  final List<String>? blogTag;
  final bool? isSelected;

  @override
  State<MoreBlogCompWidget> createState() => _MoreBlogCompWidgetState();
}

class _MoreBlogCompWidgetState extends State<MoreBlogCompWidget> {
  late MoreBlogCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreBlogCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('MORE_BLOG_moreBlogComp_ON_INIT_STATE');
      _model.blogDetailsTagSelected = await queryBlogDetailsRecordOnce(
        queryBuilder: (blogDetailsRecord) => blogDetailsRecord.where(
          'status',
          isEqualTo: true,
        ),
      );
      _model.blogtagsResult = await queryBlogTagsRecordOnce();
      _model.blogDetails =
          _model.blogDetailsTagSelected!.toList().cast<BlogDetailsRecord>();
      setState(() {});
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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.commonRichTextCompModel,
                      updateCallback: () => setState(() {}),
                      child: const CommonRichTextCompWidget(
                        richTextOne: 'Explore our ',
                        richTextTwo: 'Blogs',
                        texts:
                            'We consider ourselves lucky to work on many innovative concepts with amazing companies. We absolutely love solving problems and transforming ideas into reality.',
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        if (_model.blogDetails.isNotEmpty) {
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 30, 0, 30),
                            child: Builder(
                              builder: (context) {
                                final blogselected =
                                    _model.blogDetails.toList();

                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(blogselected.length,
                                        (blogselectedIndex) {
                                      final blogselectedItem =
                                          blogselected[blogselectedIndex];
                                      return SizedBox(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 328.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 480.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 1500.0;
                                          } else {
                                            return 1500.0;
                                          }
                                        }(),
                                        child: BlogCompWidget(
                                          key: Key(
                                              'Key2ne_${blogselectedIndex}_of_${blogselected.length}'),
                                          blogimage: blogselectedItem.image,
                                          blogTitleText: blogselectedItem.title,
                                          blogDescription:
                                              blogselectedItem.description,
                                          blogDate: blogselectedItem.name,
                                          blogTag: blogselectedItem.blogTags,
                                          readmore: () async {
                                            final String blogtitle =
                                                Uri.encodeComponent(
                                                        blogselectedItem.title)
                                                    .replaceAll('%20', '+');
                                            await launchURL(
                                                '/individualBlogPage/$blogtitle');
                                            FFAppState().selectedTitle =
                                                valueOrDefault<String>(
                                              blogselectedItem.title,
                                              'Title',
                                            );
                                          },
                                        ),
                                      );
                                    }).divide(const SizedBox(height: 15)),
                                  ),
                                );
                              },
                            ),
                          );
                        } else {
                          return Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: SizedBox(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.08,
                              child: custom_widgets.LoaderWidget(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    Builder(
                      builder: (context) {
                        if (_model.blogtagsResult != null &&
                            (_model.blogtagsResult)!.isNotEmpty) {
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 100, 0),
                            child: SingleChildScrollView(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                    child: FlutterFlowChoiceChips(
                                      options: _model.blogtagsResult!
                                          .sortedList(
                                              keyOf: (e) => e.index,
                                              desc: false)
                                          .map((e) => valueOrDefault<String>(
                                                e.tag,
                                                'N/A',
                                              ))
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                      onChanged: (val) async {
                                        setState(() =>
                                            _model.choiceChipsValues1 = val);
                                        logFirebaseEvent(
                                            'MORE_BLOG_ChoiceChips_grt9g9nv_ON_FORM_W');
                                        _model.listOfBlogTag = _model
                                            .choiceChipsValues1!
                                            .toList()
                                            .cast<String>();
                                        _model.updatePage(() {});
                                        _model.selectedblogtagCopy =
                                            await queryBlogDetailsRecordOnce(
                                          queryBuilder: (blogDetailsRecord) =>
                                              blogDetailsRecord
                                                  .whereArrayContainsAny(
                                                      'blog_tags',
                                                      _model
                                                          .choiceChipsValues1),
                                        );
                                        _model.blogDetails = _model
                                            .selectedblogtagCopy!
                                            .toList()
                                            .cast<BlogDetailsRecord>();
                                        _model.updatePage(() {});

                                        setState(() {});
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        iconSize: 14,
                                        elevation: 0,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        iconSize: 18,
                                        elevation: 1,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderWidth: 1.2,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      chipSpacing: 12,
                                      rowSpacing: 12,
                                      multiselect: true,
                                      initialized:
                                          _model.choiceChipsValues1 != null,
                                      alignment: WrapAlignment.spaceBetween,
                                      controller:
                                          _model.choiceChipsValueController1 ??=
                                              FormFieldController<List<String>>(
                                        _model.listOfBlogTag,
                                      ),
                                      wrapped: true,
                                    ),
                                  ),
                                  if (_model.choiceChipsValues1 != null &&
                                      (_model.choiceChipsValues1)!.isNotEmpty)
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(12, 0, 0, 0),
                                        child: FlutterFlowChoiceChips(
                                          options: const [
                                            ChipData(
                                                'Clear Filters', Icons.close)
                                          ],
                                          onChanged: (val) async {
                                            setState(() =>
                                                _model.choiceChipsValue2 =
                                                    val?.firstOrNull);
                                            logFirebaseEvent(
                                                'MORE_BLOG_ChoiceChips_euerd83f_ON_FORM_W');
                                            setState(() {
                                              _model.choiceChipsValueController1
                                                  ?.reset();
                                            });
                                            _model.blogDetailsTresetValueCopy =
                                                await queryBlogDetailsRecordOnce(
                                              queryBuilder:
                                                  (blogDetailsRecord) =>
                                                      blogDetailsRecord.where(
                                                'status',
                                                isEqualTo: true,
                                              ),
                                            );
                                            _model.blogDetails = _model
                                                .blogDetailsTresetValueCopy!
                                                .toList()
                                                .cast<BlogDetailsRecord>();
                                            setState(() {});

                                            setState(() {});
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      letterSpacing: 0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            iconSize: 14,
                                            elevation: 0,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 14,
                                            elevation: 0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderWidth: 1.2,
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          chipSpacing: 12,
                                          rowSpacing: 12,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController2 ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: true,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: SizedBox(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.08,
                              child: custom_widgets.LoaderWidget(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
