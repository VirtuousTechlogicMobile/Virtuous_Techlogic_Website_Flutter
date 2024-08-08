import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'faq_textcomp_widget.dart' show FaqTextcompWidget;

class FaqTextcompModel extends FlutterFlowModel<FaqTextcompWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
