import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'faq_textcomp_model.dart';

export 'faq_textcomp_model.dart';

class FaqTextcompWidget extends StatefulWidget {
  const FaqTextcompWidget({
    super.key,
    this.question,
    required this.answer,
  });

  final String? question;
  final String? answer;

  @override
  State<FaqTextcompWidget> createState() => _FaqTextcompWidgetState();
}

class _FaqTextcompWidgetState extends State<FaqTextcompWidget> {
  late FaqTextcompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqTextcompModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            offset: const Offset(
              0.0,
              2.0,
            ),
          )
        ],
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
      ),
      child: Container(
        color: const Color(0x00000000),
        child: ExpandableNotifier(
          controller: _model.expandableExpandableController,
          child: ExpandablePanel(
            header: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                valueOrDefault<String>(
                  widget.question,
                  'hat makes Virtuous Technologic different from other app development companies?',
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).black,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          GoogleFonts.asMap().containsKey('Poppins'),
                    ),
              ),
            ),
            collapsed: Container(),
            expanded: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                valueOrDefault<String>(
                  widget.answer,
                  'Virtuous Technologic stands out with its personalized approach to digital solutions. We specialize in Flutter development and offer unique No Code, Low Code methodologies, ensuring rapid, user-friendly, and customized app development tailored to each client\'s specific needs.',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).labelLargeFamily),
                    ),
              ),
            ),
            theme: const ExpandableThemeData(
              tapHeaderToExpand: true,
              tapBodyToExpand: true,
              tapBodyToCollapse: false,
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              hasIcon: true,
            ),
          ),
        ),
      ),
    );
  }
}
