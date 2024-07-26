import '/backend/backend.dart';
import '/components/common_rich_text_comp/common_rich_text_comp_widget.dart';
import '/components/get_in_touch_component/get_in_touch_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'request_quote_comp_widget.dart' show RequestQuoteCompWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class RequestQuoteCompModel extends FlutterFlowModel<RequestQuoteCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for commonRichTextComp component.
  late CommonRichTextCompModel commonRichTextCompModel;
  // Model for getInTouchComponent component.
  late GetInTouchComponentModel getInTouchComponentModel1;
  // Model for getInTouchComponent component.
  late GetInTouchComponentModel getInTouchComponentModel2;

  @override
  void initState(BuildContext context) {
    commonRichTextCompModel =
        createModel(context, () => CommonRichTextCompModel());
    getInTouchComponentModel1 =
        createModel(context, () => GetInTouchComponentModel());
    getInTouchComponentModel2 =
        createModel(context, () => GetInTouchComponentModel());
  }

  @override
  void dispose() {
    commonRichTextCompModel.dispose();
    getInTouchComponentModel1.dispose();
    getInTouchComponentModel2.dispose();
  }
}
