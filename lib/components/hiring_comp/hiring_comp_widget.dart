import '/components/expectation_comp/expectation_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hiring_comp_model.dart';
export 'hiring_comp_model.dart';

class HiringCompWidget extends StatefulWidget {
  const HiringCompWidget({
    super.key,
    required this.imagePath,
    required this.jobTitle,
    required this.expectation,
    this.expectation2,
    this.expectation3,
    required this.expectation4,
    this.expectation5,
    this.expectation6,
    this.expectation7,
  });

  final String? imagePath;
  final String? jobTitle;
  final String? expectation;
  final String? expectation2;
  final String? expectation3;
  final String? expectation4;
  final String? expectation5;
  final String? expectation6;
  final String? expectation7;

  @override
  State<HiringCompWidget> createState() => _HiringCompWidgetState();
}

class _HiringCompWidgetState extends State<HiringCompWidget> {
  late HiringCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HiringCompModel());

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
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 50.0,
            color: Color(0x1FF8AB27),
            offset: Offset(
              0.0,
              0.0,
            ),
          )
        ],
      ),
      child: Container(
        width: 387.0,
        height: 430.0,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 55.0, 5.0, 16.0),
                      child: SelectionArea(
                          child: Text(
                        widget!.jobTitle!,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).black,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                      )),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.expectationCompModel1,
                          updateCallback: () => setState(() {}),
                          child: ExpectationCompWidget(
                            description: widget!.expectation!,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.expectationCompModel2,
                          updateCallback: () => setState(() {}),
                          child: ExpectationCompWidget(
                            description: widget!.expectation2!,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.expectationCompModel3,
                          updateCallback: () => setState(() {}),
                          child: ExpectationCompWidget(
                            description: widget!.expectation3!,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.expectationCompModel4,
                          updateCallback: () => setState(() {}),
                          child: ExpectationCompWidget(
                            description: widget!.expectation4!,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.expectationCompModel5,
                          updateCallback: () => setState(() {}),
                          child: ExpectationCompWidget(
                            description: widget!.expectation5!,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.expectationCompModel6,
                          updateCallback: () => setState(() {}),
                          child: ExpectationCompWidget(
                            description: widget!.expectation6!,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.expectationCompModel7,
                          updateCallback: () => setState(() {}),
                          child: ExpectationCompWidget(
                            description: widget!.expectation7!,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 20.0),
                        child: Container(
                          width: 150.0,
                          height: 42.0,
                          child: custom_widgets.ShareButton(
                            width: 150.0,
                            height: 42.0,
                            title: widget!.jobTitle!,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 88.0,
                  height: 88.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        fadeInDuration: Duration(milliseconds: 500),
                        fadeOutDuration: Duration(milliseconds: 500),
                        imageUrl: valueOrDefault<String>(
                          widget!.imagePath,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/virtuous-techlogic-website-mjpcg0/assets/8w8x2gnlyyl6/customer-service.svg',
                        ),
                        width: 48.0,
                        height: 48.0,
                        fit: BoxFit.cover,
                        alignment: Alignment(0.0, 0.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 130.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x00FFFFFF),
                          Color(0x0A0586E2),
                          Color(0x1F0586E2),
                          Color(0x230586E2),
                          Color(0x1F0586E2),
                          Color(0x0A0586E2),
                          Color(0x00FFFFFF)
                        ],
                        stops: [0.0, 0.2, 0.4, 0.5, 0.6, 0.8, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                  ),
                ),
              ].divide(SizedBox(height: 5.0)),
            ),
          ],
        ),
      ),
    );
  }
}
