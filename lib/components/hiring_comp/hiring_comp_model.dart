import '/components/expectation_comp/expectation_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'hiring_comp_widget.dart' show HiringCompWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HiringCompModel extends FlutterFlowModel<HiringCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for expectationComp component.
  late ExpectationCompModel expectationCompModel1;
  // Model for expectationComp component.
  late ExpectationCompModel expectationCompModel2;
  // Model for expectationComp component.
  late ExpectationCompModel expectationCompModel3;
  // Model for expectationComp component.
  late ExpectationCompModel expectationCompModel4;
  // Model for expectationComp component.
  late ExpectationCompModel expectationCompModel5;
  // Model for expectationComp component.
  late ExpectationCompModel expectationCompModel6;
  // Model for expectationComp component.
  late ExpectationCompModel expectationCompModel7;

  @override
  void initState(BuildContext context) {
    expectationCompModel1 = createModel(context, () => ExpectationCompModel());
    expectationCompModel2 = createModel(context, () => ExpectationCompModel());
    expectationCompModel3 = createModel(context, () => ExpectationCompModel());
    expectationCompModel4 = createModel(context, () => ExpectationCompModel());
    expectationCompModel5 = createModel(context, () => ExpectationCompModel());
    expectationCompModel6 = createModel(context, () => ExpectationCompModel());
    expectationCompModel7 = createModel(context, () => ExpectationCompModel());
  }

  @override
  void dispose() {
    expectationCompModel1.dispose();
    expectationCompModel2.dispose();
    expectationCompModel3.dispose();
    expectationCompModel4.dispose();
    expectationCompModel5.dispose();
    expectationCompModel6.dispose();
    expectationCompModel7.dispose();
  }
}
