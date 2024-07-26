import '/components/faq_comp/faq_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'faq_textcomp_copy_widget.dart' show FaqTextcompCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FaqTextcompCopyModel extends FlutterFlowModel<FaqTextcompCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for faqComp component.
  late FaqCompModel faqCompModel;

  @override
  void initState(BuildContext context) {
    faqCompModel = createModel(context, () => FaqCompModel());
  }

  @override
  void dispose() {
    faqCompModel.dispose();
  }
}
