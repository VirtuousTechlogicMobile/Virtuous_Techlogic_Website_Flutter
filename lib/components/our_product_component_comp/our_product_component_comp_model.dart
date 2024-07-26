import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/explore_our_product_comp/explore_our_product_comp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'our_product_component_comp_widget.dart'
    show OurProductComponentCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OurProductComponentCompModel
    extends FlutterFlowModel<OurProductComponentCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
  }
}
