import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:virtuous_techlogic_website/flutter_flow/flutter_flow_theme.dart';

import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/seven_steps_comp/seven_steps_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'process_step_comp_model.dart';

export 'process_step_comp_model.dart';

class ProcessStepCompWidget extends StatefulWidget {
  const ProcessStepCompWidget({super.key});

  @override
  State<ProcessStepCompWidget> createState() => _ProcessStepCompWidgetState();
}

class _ProcessStepCompWidgetState extends State<ProcessStepCompWidget> {
  late ProcessStepCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessStepCompModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                wrapWithModel(
                  model: _model.commonRichTextCompModel,
                  updateCallback: () => setState(() {}),
                  child: const CommonRichTextCompWidget(
                    richTextOne: 'Our Step wise ',
                    richTextTwo: 'Processes',
                    texts: 'Our Approach to find solution for your Problem',
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController,
              child: ExpandablePanel(
                header: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/process1.webp',
                                    width: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/process2.webp',
                                  width: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/process3.webp',
                                  width: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/process4.webp',
                                  width: 150.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 0),
                                fadeOutDuration:
                                    const Duration(milliseconds: 0),
                                imageUrl:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/6xcgolrot1o7/Frame_252(1).webp',
                                fit: BoxFit.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                collapsed: Container(),
                expanded: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.sevenStepsCompModel,
                    updateCallback: () => setState(() {}),
                    child: const SevenStepsCompWidget(),
                  ),
                ),
                theme: const ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
